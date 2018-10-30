# Wordplay

![Gem Release Version](https://badge.fury.io/rb/wordplay.svg)
![Build Status](https://travis-ci.com/boone/wordplay.svg?branch=master)

Some interesting methods to use on words.

The idea came from a story about a boy, who, when asked to put words in
alphabetical order, ordered the letters of the word instead of the words
themselves. I was intrigued by "fox" which was already sorted in that manner.

## Example:

```ruby
require "wordplay"

word = Wordplay.new("fox")
word.ordered_letters? # true

word = Wordplay.new("pizza")
word.reverse_ordered_letters # zzpia
```

There is also an example which loops through `/usr/share/dict/words` to find
words with their letters sorted. I think my favorite is "bijoux".

## New in Version 0.0.2

Match palindromes!

```ruby
require "wordplay"

words = Wordplay.new("Do geese see God?") # ignores spaces and punctuation
words.palindrome? # true
```

# Contributing

If you have an interesting word method or a bugfix, please submit a pull
request.

# Contact

[@boonedocks](https://twitter.com/boonedocks) on Twitter
