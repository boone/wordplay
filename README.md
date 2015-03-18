# Wordplay

Some interesting methods to use on words. Currently can match words with their
letters in alphabetical or reverse alphabetical order.

The idea came from a story about a boy, who, when asked to put words in
alphabetical order, ordered the letters of the word instead of the words
themselves. I was intrigued by "fox" which was already sorted in that manner.

## Example:

```ruby
require "wordplay"

word = Wordplay.new("fox")
word.ordered_letters? # true

word = Wordplay.new("loop")
word.reverse_ordered_letters # pool
```

There is also an example which loops through `/usr/share/dict/words` to find
words with their letters sorted. I think my favorite is *bijoux*.

# Contributing

If you have an interesting word method or a bugfix, please submit a pull
request.

# Contact

[@boonedocks](https://twitter.com/boonedocks) on Twitter
