require 'fileutils'
# Main RPDFBox Module
module RPDFBox
  # Location of our PDF Box executable jar
  PDFBOX_EXECUTABLE = File.expand_path(File.dirname(__FILE__)) + "/jars/pdfbox-app-1.7.1.jar"
  # All Text Extraction tools
  class TextExtraction
    # Retrieves all text for a given PDF
    # == Parameters:
    # location::
    #   Location of PDF Document
    # == Returns:
    # Returns the full text of the PDF given
    def self.get_text_all(location)
      return `java -jar #{PDFBOX_EXECUTABLE} ExtractText -console #{location}`
    end
    # Retrieves text for a given PDF from a range of pages (ex. 2-4)
    # == Parameters:
    # location::
    #   Location of PDF Document
    # start::
    #   The first page in your range
    # end::
    #   The last page in your range
    # == Returns:
    # Returns the full text of the PDF given
    def self.get_text_range(location,start,finish)
      return `java -jar #{PDFBOX_EXECUTABLE} ExtractText -console -startPage #{start} -endPage #{finish} #{location}`
    end
    # Retrieves text for a given PDF from a single page
    # == Parameters:
    # location::
    #   Location of PDF Document
    # page::
    #   The first page in your range
    # == Returns:
    # Returns the full text of the PDF given
    def self.get_text_single(location,page)
      return `java -jar #{PDFBOX_EXECUTABLE} ExtractText -console -startPage #{page} -endPage #{page} #{location}`
    end
  end
end