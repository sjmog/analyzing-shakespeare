require "play"

describe Play do
  before do
    allow(subject).to receive(:fetch_play).and_return local_macbeth
  end

  it "knows the source of the play" do
    expect(subject.source).to eq "www.ibiblio.org"
  end

  it "knows the path of the play" do
    expect(subject.path).to eq "/xml/examples/shakespeare/"
  end

  it "defaults to Macbeth" do
    expect(subject.file).to eq "macbeth.xml"
  end

  it "knows the contents of the play" do
    expect(subject.contents).to eq local_macbeth
  end

  private

  def local_macbeth
    xml = File.open("spec/fixtures/macbeth.xml", "r")
    xml.read
  end
end