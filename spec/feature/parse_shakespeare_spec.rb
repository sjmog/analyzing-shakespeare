describe "Parses a play" do
  before do
    allow_any_instance_of(Play).to receive(:fetch_play).and_return local_macbeth
  end

  it "correctly parses the first character" do
    play = Play.new
    expect(play.print_character_lines).to eq macbeth_character_lines
  end

  private

  def local_macbeth
    xml = File.open("spec/fixtures/macbeth.xml", "r")
    xml.read
  end

  def macbeth_character_lines
    "MACBETH: 719\nLADY MACBETH: 265\nMALCOLM: 212\nMACDUFF: 180\nROSS: 135\nBANQUO: 113\nLENNOX: 73\nDUNCAN: 70\nFirst Witch: 62\nPorter: 46\nDoctor: 45\nLADY MACDUFF: 41\nHECATE: 39\nSergeant: 35\nFirst Murderer: 30\nSIWARD: 30\nThird Witch: 27\nSecond Witch: 27\nALL: 24\nGentlewoman: 23\nMessenger: 23\nLord: 21\nANGUS: 21\nSon: 20\nSecond Murderer: 15\nMENTEITH: 12\nOld Man: 11\nCAITHNESS: 11\nDONALBAIN: 10\nThird Murderer: 8\nYOUNG SIWARD: 7\nThird Apparition: 5\nSEYTON: 5\nServant: 5\nSecond Apparition: 4\nLords: 3\nFirst Apparition: 2\nFLEANCE: 2\nBoth Murderers: 2\nATTENDANT: 1\nSoldiers: 1\n"
  end
end