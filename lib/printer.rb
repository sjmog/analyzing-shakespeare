class Printer
  def print_lines(arr)
    arr.inject("") do | str, character_lines |
      str << "#{character_lines[0]}: #{character_lines[1]}\n"
    end
  end
end