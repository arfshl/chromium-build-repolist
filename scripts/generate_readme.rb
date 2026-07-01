# This script is licensed under GPLv3

require 'erb'
require 'json'

# File paths
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

    # Ensure the data file exists before generating the README
    unless File.exist?(@data_path)
      puts "Error: Data file #{@data_path} not found! Please run fetch_github.rb first."
      return
    end

    # Load the latest download links from the JSON data source
    @links = JSON.parse(File.read(@data_path))

    # Read the ERB template
    template_content = File.read(@template_path)

    # Render the template using the loaded data
    renderer = ERB.new(template_content)
    result = renderer.result(binding)

    # Write the rendered content to README.md
    File.write(@output_path, result)
    puts "Successfully generated README.md from latest data source"
  end
end

# Create the generator instance and generate the README
generator = ReadmeGenerator.new(DATA_FILE, TEMPLATE_FILE, OUTPUT_FILE)
generator.render