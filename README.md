# RPDFBox #
This is a wrapper for [PDFBox](http://pdfbox.apache.org), provided by Apache

## Requirements ##
* [Java 7 SE](http://java.oracle.com)

## Installation ##
To install this gem:

    (sudo) gem install rpdfbox

## Usage ##
    require 'rpdfbox'

### Get all text ###

    text = RPDFBox::TextExtraction.get_text_all("somepdf")

### Get text from multiple pages (range)

    text = RPDFBox::TextExtraction.get_text_range("somepdf",2,4)

### Get text from single page

    text = RPDFBox::TextExtraction.get_text_single("somepdf",1)

# TODO #
* spec creation
* Save text to location
* Way more

# NOTES #
The API before 0.0.2 breaks. Just an FYI.