require 'nokogiri'
require 'net/http'

class Play

  attr_reader :source, :file, :path

  def initialize
    @source = "www.ibiblio.org"
    @path = "/xml/examples/shakespeare/"
    @file = "macbeth.xml"
  end

  def contents
    @contents ||= fetch_play
  end

  def print_character_lines
    Printer.new.print_lines(PlayParser.character_lines(contents))
  end

  private

  def fetch_play
    PlayFetcher.fetch({
      source: source,
      path: path,
      file: file
    })
  end
end