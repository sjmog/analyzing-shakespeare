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

  private

  def fetch_play
    Net::HTTP.start(source) { | http |
      resp = http.get(path + file)
      resp.body
    }
  end
end