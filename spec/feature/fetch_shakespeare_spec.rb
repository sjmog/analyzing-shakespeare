describe "Fetches Shakespeare" do
  before do
    allow_any_instance_of(Play).to receive(:fetch_play).and_return local_macbeth
  end

  it "retains the contents of Macbeth" do
    play = Play.new
    expect(play.contents).to eq local_macbeth
  end

  private

  def local_macbeth
    xml = File.open("spec/fixtures/macbeth.xml", "r")
    xml.read
  end
end