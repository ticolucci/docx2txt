require "rubygems"
require "nokogiri"
require "zip"

module Docx2TXT
  class Docx
    def initialize location
      @location = location
    end
  
    def to_txt
      get_text get_xml
    end
  
    private

    def get_xml
      Zip::File.new(@location).each do |entry|
        return Nokogiri.XML entry.get_input_stream.readlines.join if entry.name =~ /word.document.xml/
      end
    end

    def get_text xml
      lines = xml.children.map do |c|
        c.children.map do |i|
          i.children.map(&:text)
        end.flatten
      end.flatten
      lines.join("\n")
    end
  end
end