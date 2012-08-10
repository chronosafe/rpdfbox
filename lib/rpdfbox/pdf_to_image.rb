module RPDFBox
  # All Image Conversion tools
  class PDFToImage
    # Converts PDF to Image
    # Per PDFBox's site
    # WARNING: This is new code and should be treated as beta quality!
    # == Parameters:
    # location::
    #   Location of PDF Document
    # passowrd::
    #   PDF Password (if needed); default: ""
    # == Returns:
    # When finished, will return true.
    def self.pdf_to_jpg(location,password="")
      password = (password.length > 0) ? "-password #{password}" : ""
      `java -jar #{$PDFBOX_EXECUTABLE} PDFToImage #{password} #{location}`
      # FileUtils.mv()
      return true
    end
  end
end