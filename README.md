# CSV 2 PDF

This is a simple Ruby script to convert a CSV file into a printable PDF
using [Prawn](https://github.com/prawnpdf/prawn) to design the tables.

## Getting Started

### Prerequisites

```
ruby ~>2.6.3
```

This will save a PDF of with the same name of the given CSV file.

### Installing

Install dependencies with:

```
bundle install
```

### Usage

Download the script file and run with the following command

```
ruby csv_to_pdf.rb
```

## Development

Download this repository and customize the table following
[Prawn](https://github.com/prawnpdf/prawn) documentation.

## Built With

* [Prawn](https://github.com/prawnpdf/prawn/tree/2.2.2) - PDF Generator
* [Prawn Table](https://github.com/prawnpdf/prawn-table/tree/0.2.2) - Dependency for generating tables
