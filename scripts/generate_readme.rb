require 'erb'
require 'json'

# Filepaths
DATA_FILE = File.join(__dir__, 'links_data.json')
TEMPLATE_FILE = File.join(__dir__, '..', 'templates', 'README.md.erb')
OUTPUT_FILE = File.join(__dir__, '..', 'README.md')

class ReadmeGenerator
  def initialize(data_path, template_path, output_path)
    @data_path = data_path
    @template_path = template_path
    @output_path = output_path
  end

  def render
    # 1. Validate that the data file exists
    unless File.exist?(@data_path)
      puts "Error: Data file #{@data_path} not found! Please run fetch_github.rb first."
      return
    end

    # 2. Load repository links from the "github" section in JSON
    raw_json = JSON.parse(File.read(@data_path))
    @links = raw_json['github'] || {}

    # 3. Read the ERB template
    template_content = File.read(@template_path)

    # 4. Compile with ERB Ruby Engine
    renderer = ERB.new(template_content)
    result = renderer.result(binding)

    # 5. Write the result directly to the main README.md file in the repo root
    File.write(@output_path, result)
    puts "Successfully generated README.md from latest data source"
  end
end

# Execute the generator
generator = ReadmeGenerator.new(DATA_FILE, TEMPLATE_FILE, OUTPUT_FILE)
generator.render