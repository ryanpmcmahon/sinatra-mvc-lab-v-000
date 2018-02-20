
class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text.split(" ")
  end

  def word_checker
    # split words into individual letters
    #
    # loop through letters of words
    # 
    # if letter is a consonant, set to placeholder variable, shift, push to end
    #
    # if letter is a vowel, jump to end of word
    #
    # add 'ay'

    word_arr = text.map{|word| word.split()}
    word_arr.each do |word|
      word.each_with_index do |l,i|
        new_word =
        if !/[aeiouy]/.match(l)
          new_word << l
          word.shift
        end
      end
    end
  end

end
