=begin
Given a DNA strand, its transcribed RNA strand is formed by replacing
each nucleotide with its complement:
 
* `G` -> `C`
* `C` -> `G`
* `T` -> `A`
* `A` -> `U`
=end

module Complement
  def self.of_dna(strand)
    pairs = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
    rna = strand.chars.map{|nucleotide| pairs[nucleotide]}.join
  end
end


