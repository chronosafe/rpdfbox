module RPDFBox
  # The Overlay Tool
  class Overlay
    # Overlay one document with the content of another document
    # == Parameters:
    # left_pdf::
    #   Location of Left PDF Document
    # right_pdf::
    #   Location of Right PDF Document
    # out_pdf::
    #   Location of Output PDF Document
    # == Returns:
    # When finished, will return true.
    def self.get_overlay(left_pdf,right_pdf,out_pdf)
      `java -jar #{$PDFBOX_EXECUTABLE} Overlay #{left_pdf} #{right_pdf} #{out_pdf}`
      return true
    end
  end
end