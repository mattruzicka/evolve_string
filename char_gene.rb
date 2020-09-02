class CharGene
  include Evolvable::Gene

  CHARS = [('a'..'z').to_a,
           ('A'..'Z').to_a,
           ('0'..'9').to_a,
           ['.', ',', '?', '!', '"', ':', ';', '-', '(', ')'],
           ' '].flatten.freeze

  def to_s
    @to_s ||= CHARS.sample
  end
end
