require 'fileutils'
# Main RPDFBox Module
module RPDFBox
  # Location of our PDF Box executable jar
  PDFBOX_EXECUTABLE = File.expand_path(File.dirname(__FILE__)) + "/jars/pdfbox-app-1.7.1.jar"
  # Location of the Temporary Text File
  TEMP_OUTPUT = File.expand_path(File.dirname(__FILE__))+ "/tmp.txt"
  # All Text Extraction tools
  class TextExtraction
    # Retrieves all text for a given PDF
    # == Parameters:
    # location::
    #   Location of PDF Document
    # == Returns:
    # Returns the full text of the PDF given
    def self.get_all_text(location)
      `java -jar #{PDFBOX_EXECUTABLE} ExtractText #{location} #{TEMP_OUTPUT}`
      text = File.read(TEMP_OUTPUT)
      FileUtils.rm(TEMP_OUTPUT, :force => true)
      return text
    end
  end
end