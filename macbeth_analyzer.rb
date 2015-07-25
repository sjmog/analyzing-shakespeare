lib = Dir.entries('./lib').reject{ | entry | [".", "..", ".gitkeep"].include? entry }
lib.each { | file | require "./lib/#{file}" }

play = Play.new
print play.print_character_lines
