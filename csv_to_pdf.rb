# Author: Theo Melo
# Description: Converts a given CSV file into PDF
# Date: 2020-02-08
# Version: 0.1
# Usage: ruby csv_to_pdf.rb {csv_file} || csv_to_pdf.exe {csv_file}

require 'csv'
require 'prawn'
require 'prawn/table'

# Select the first CSV file ordered by
# creation date. Return if none is found
csv_file = Dir['*'].sort_by{ |f| File.ctime(f) }.select {|word| word.include?(".csv")}.first
return puts 'No CSV files found!' if csv_file.nil?

# Set the title of the report based on 
# the filename
csv_title = File.basename(csv_file, '.*')
pdf_title = csv_title.gsub("_", " ").upcase

# Parses and saves the PDF
csv_data = CSV.read(csv_file, headers: true).to_a
pdf = Prawn::Document.new
pdf.text("#{pdf_title}\n", size: 18, style: :bold)
pdf.table(csv_data)
pdf.text("\n#{csv_data.count} lines")
pdf.render_file("#{csv_title}.pdf")
