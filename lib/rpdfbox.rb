# Main RPDFBox Module
module RPDFBox
  # Location of the Temporary Text File
  TMP_TEXT_FILE = File.expand_path("tmp/") + "/tmp.txt"
  # All Text Extraction tools
  class TextExtraction
    # Retrieves all text for a given PDF
    # == Parameters:
    # location::
    #   Location of PDF Document
    # == Returns:
    # Returns the full text of the PDF given
    def self.get_all_text(location)
      `java -jar jars/pdfbox-app-1.7.1.jar ExtractText #{location} #{TMP_TEXT_FILE}`
      text = File.read(TMP_TEXT_FILE)
      return text
    end
  end
end