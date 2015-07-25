module PlayParser
  def self.character_lines(play)
    characters = []
    characters_hash = Hash.new(0)

    parsed_play = Nokogiri::XML(play)
    speeches = parsed_play.root.xpath("//ACT//SCENE//SPEECH")

    speeches.each do | speech |
      speaker = speech.children.select{|node| node.name == "SPEAKER"}.map { |spkr| spkr.content  }[0]
      lines = speech.children.select{|node| node.name == "LINE"}
      lines.count.times do
        characters << speaker
      end
    end

    characters.each do | character |
      characters_hash[character] += 1
    end

    characters_hash.sort_by{|k,v| v}.reverse
  end
end