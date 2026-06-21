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
    # 1. Validasi apakah file data JSON ada
    unless File.exist?(@data_path)
      puts "Error: Data file #{@data_path} not found! Please run fetch_github.rb first."
      return
    end

    # 2. LOAD SECARA UTUH (Mengatasi masalah URL kosong / sial sebelumnya)
    # Jangan dipotong menjadi raw_json['github'], agar data 'google' tidak hilang
    @links = JSON.parse(File.read(@data_path))

    # 3. Baca ERB template
    template_content = File.read(@template_path)

    # 4. Compile menggunakan ERB Ruby Engine
    renderer = ERB.new(template_content)
    result = renderer.result(binding)

    # 5. Tulis hasilnya langsung ke file README.md utama
    File.write(@output_path, result)
    puts "Successfully generated README.md from latest data source"
  end
end

# Eksekusi generator
generator = ReadmeGenerator.new(DATA_FILE, TEMPLATE_FILE, OUTPUT_FILE)
generator.render