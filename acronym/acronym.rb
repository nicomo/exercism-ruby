# Converts a phrase to its acronym
module Acronym
  def self.abbreviate(sentence)
    words = sentence.scan(/\w+/)
    acronym = ""
    words.each { |word| 
      acronym << word[0,1].upcase
    }
    return acronym
  end
end