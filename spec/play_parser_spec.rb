require 'play_parser'

describe PlayParser do
  it "parses a play" do
    lines = described_class.character_lines(local_macbeth)
    expect(lines.first).to eq ["MACBETH", 719]
  end

  private

  def local_macbeth
    xml = File.open("spec/fixtures/macbeth.xml", "r")
    xml.read
  end
end