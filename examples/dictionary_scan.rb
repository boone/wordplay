require_relative '../lib/wordplay'

# Determine the longest words in the supplied group.
#
# words - Array
#
# Returns an Array.
def longest_words(words)
  words.sort_by { |w| w.size }.tap do |sorted|
    longest = sorted.last.size
    sorted.delete_if { |w| w.size < longest }
  end.sort
end

SOURCE = '/usr/share/dict/words'

raise "Dictionary not available!" unless File.exists?(SOURCE)

full_count    = 0
ordered_words = []
palindromes   = []

# Loop the source file for words to check
File.foreach(SOURCE, "\n") do |word|
  word.strip! # remove the linefeeds

  if word.size > 1 # exclude one-character words
    wordplay = Wordplay.new(word)

    ordered_words << word if wordplay.ordered_letters?
    palindromes   << word if wordplay.palindrome?

    full_count += 1
  end
end

longest_ordered_words = longest_words(ordered_words)
longest_palindromes   = longest_words(palindromes)

puts "Ordered words (#{ordered_words.size} of #{full_count}), longest: #{longest_ordered_words.join(', ')}"
puts "Palindromes (#{palindromes.size} of #{full_count}), longest: #{longest_palindromes.join(', ')}"
