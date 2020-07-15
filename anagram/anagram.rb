# Given a word and a list of possible anagrams, select the correct sublist

class Anagram

  def initialize(detector)
    @detector = detector.downcase
    @letters = @detector.chars.sort
  end

  def match(candidates)
    candidates.select do |candidate|
      candidate.downcase.chars.sort == @letters && @detector != candidate.downcase
    end
  end
end