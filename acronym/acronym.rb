# Converts a phrase to its acronym
module Acronym
  def self.abbreviate(sentence)
    words = sentence.scan(/\w+/)
    acronym = words.map {
      |word| word[0]
    }
    acronym.join.upcase
  end
end