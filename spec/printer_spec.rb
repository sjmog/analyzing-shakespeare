require 'printer'

describe Printer do
  it "prints lines from an Array" do
    expect(subject.print_lines(sample_array)).to eq sample_lines
  end

  private

  def sample_array
    [
      ["MACBETH", 718],
      ["DORIS", 12]
    ]
  end

  def sample_lines
    "MACBETH: 718\nDORIS: 12\n"
  end
end