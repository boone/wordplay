require_relative '../lib/wordplay'

SOURCE = '/usr/share/dict/words'

raise "Dictionary not available!" unless File.exists?(SOURCE)

match_count   = 0
full_count    = 0
longest_words = [""]

# Loop the source file for words to check
File.foreach(SOURCE, "\n") do |word|
  word.strip! # remove the linefeeds

  if word.size > 1 # exclude one-character words
    if Wordplay.new(word).ordered_letters?
      puts word
      match_count += 1
      longest_words << word if word.size >= longest_words.last.size
    end

    full_count += 1
  end
end

longest = longest_words.last.size
longest_words.delete_if { |w| w.size < longest }

puts "\nMatching words: #{match_count} out of #{full_count}"
puts "Longest words: #{longest_words.join(', ')}"
