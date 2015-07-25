require 'play_fetcher'

class PlayFetcherWrapper
  extend PlayFetcher
end

describe PlayFetcherWrapper do
  before do
    allow(described_class).to receive(:fetch).and_return local_macbeth
  end

  it "fetches the play" do
    expect(described_class.fetch(defaults)).to eq local_macbeth
  end

  private

  def defaults
    { 
      source: default_source,
      path: default_path,
      file: default_file
    }
  end

  def default_source
    "www.ibiblio.org"
  end

  def default_path
    "/xml/examples/shakespeare/"
  end

  def default_file
    "macbeth.xml"
  end

  def local_macbeth
    xml = File.open("spec/fixtures/macbeth.xml", "r")
    xml.read
  end
end