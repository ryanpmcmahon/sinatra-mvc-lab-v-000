
class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text.split(" ")
  end

  def word_checker
    text.map{|word| word.split(/[aeiouy]/).push('ay').join("")}.join(" ")
  end

end
