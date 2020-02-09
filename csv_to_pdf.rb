#!/usr/bin/env ruby
# Author: Theo Melo
# Description: Converts a given CSV file into PDF
# Date: 2020-02-08
# Version: 0.1
# Usage: ruby csv_to_pdf.rb {csv_file} || csv_to_pdf.exe {csv_file}

require 'csv'
require 'prawn'
require 'prawn/table'

csv_file = ARGV[0]
csv_title = File.basename(csv_file, '.*')

def csv?(file)
  File.extname(file) == '.csv'
end

# Checks if argument passed is CSV
# if so, then parses and saves the PDF
if csv?(csv_file)
  csv_data = CSV.read(csv_file, headers: true).to_a
  pdf = Prawn::Document.new
  pdf.text("Report\n", size: 18, style: :bold)
  pdf.table(csv_data)
  pdf.text("\n#{csv_data.count} lines")
  pdf.render_file("#{csv_title}.pdf")
end

