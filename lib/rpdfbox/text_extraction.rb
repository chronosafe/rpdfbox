module RPDFBox
  # All Text Extraction tools
  class TextExtraction
    # Retrieves all text for a given PDF
    # == Parameters:
    # location::
    #   Location of PDF Document
    # passowrd::
    #   PDF Password (if needed); default: ""
    # encoding::
    #   PDF Encoding (if needed); default: ""
    # == Returns:
    # Returns the full text of the PDF given
    def self.get_text_all(location,password="",encoding="")
      password = (password.length > 0) ? "-password #{password}" : ""
      encoding = (encoding.length > 0) ? "-encoding #{encoding}" : ""
      return `java -jar #{$PDFBOX_EXECUTABLE} ExtractText -console #{password} #{encoding} #{location}`
    end
    # Retrieves text for a given PDF from a range of pages (ex. 2-4)
    # == Parameters:
    # location::
    #   Location of PDF Document
    # start::
    #   The first page in your range
    # end::
    #   The last page in your range
    # passowrd::
    #   PDF Password (if needed); default: ""
    # encoding::
    #   PDF Encoding (if needed); default: ""
    # == Returns:
    # Returns the full text of the PDF given
    def self.get_text_range(location,start,finish,password="",encoding="")
      password = (password.length > 0) ? "-password #{password}" : ""
      encoding = (encoding.length > 0) ? "-encoding #{encoding}" : ""
      return `java -jar #{$PDFBOX_EXECUTABLE} ExtractText -console #{password} #{encoding} -startPage #{start} -endPage #{finish} #{location}`
    end
    # Retrieves text for a given PDF from a single page
    # == Parameters:
    # location::
    #   Location of PDF Document
    # page::
    #   The first page in your range
    # passowrd::
    #   PDF Password (if needed); default: ""
    # encoding::
    #   PDF Encoding (if needed); default: ""
    # == Returns:
    # Returns the full text of the PDF given
    def self.get_text_single(location,page,password="",encoding="")
      password = (password.length > 0) ? "-password #{password}" : ""
      encoding = (encoding.length > 0) ? "-encoding #{encoding}" : ""
      return `java -jar #{$PDFBOX_EXECUTABLE} ExtractText -console #{password} #{encoding} -startPage #{page} -endPage #{page} #{location}`
    end
  end
end