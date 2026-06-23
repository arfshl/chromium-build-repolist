# This script is licensed under GPLv3

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
    
    unless File.exist?(@data_path)
      puts "Error: Data file #{@data_path} not found! Please run fetch_github.rb first."
      return
    end
  
    @links = JSON.parse(File.read(@data_path))
   
    template_content = File.read(@template_path)

    renderer = ERB.new(template_content)
    result = renderer.result(binding)

    File.write(@output_path, result)
    puts "Successfully generated README.md from latest data source"
  end
end

generator = ReadmeGenerator.new(DATA_FILE, TEMPLATE_FILE, OUTPUT_FILE)
generator.render