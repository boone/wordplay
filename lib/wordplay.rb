class Wordplay
  # Public: creates a class instance
  # word - a String
  def initialize(word)
    @word = word.downcase # always work with lowercase
  end

  # Public: determines if the component letters of the provided word are
  # in alphabetical order.
  # E.g.: "fox" has its letters in order, "car" does not.
  #
  # Returns a Boolean
  def ordered_letters?
    # we could just run `@word == ordered_letters` but this is faster
    1.upto(@word.length - 1) do |i|
      return false unless @word[i] >= @word[i - 1]
    end
    true
  end

  # Public: determines if the component letters of the provided word are
  # in reverse alphabetical order.
  # E.g.: "pig" has its letters in reverse order, "car" does not.
  #
  # Returns a Boolean
  def reverse_ordered_letters?
    1.upto(@word.length - 1) do |i|
      return false unless @word[i] <= @word[i - 1]
    end
    true
  end

  # Public: orders the letters of a word in alphabetical order.
  #
  # Returns a String
  def ordered_letters
    @word.chars.sort.join
  end

  # Public: orders the letters of a word in reverse alphabetical order.
  #
  # Returns a String
  def reverse_ordered_letters
    ordered_letters.reverse
  end

  # Public: determines if the provided string is a palindome
  # Only non-accented ASCII letters are accepted for now.
  #
  # Returns a Boolean
  def palindrome?
    formatted_word = @word.gsub(/[^a-z]/, "")
    formatted_word == formatted_word.reverse
  end
end
