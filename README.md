# RPDFBox
This is a wrapper for [PDFBox](http://pdfbox.apache.org), provided by Apache
## Requirements
* [Java 7 SE](http://java.oracle.com)
## Installation
To install this gem:
    (sudo) gem install rpdfbox
## Usage
    require 'rpdfbox'
    text = RPDFBox::TextExtraction.get_all_text("somepdf")
    puts text
# TODO
* Get text from page range
* Get text for single page
* Save text to location
* Way more