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
    PlayFetcher.fetch({
      source: source,
      path: path,
      file: file
    })
  end
end