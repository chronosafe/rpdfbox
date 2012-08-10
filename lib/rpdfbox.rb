require 'fileutils'
Dir[File.expand_path(File.dirname(__FILE__)) + "/rpdfbox/*.rb"].each{|f| require f}
# Location of our PDF Box executable jar
module RPDFBox
  $PDFBOX_EXECUTABLE = File.expand_path(File.dirname(__FILE__)) + "/jars/pdfbox-app-1.7.1.jar"
end
