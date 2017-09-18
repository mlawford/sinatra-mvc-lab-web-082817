require 'pry'
class PigLatinizer

  def piglatinize(text)
    vowels = ["a","e","i","o","u"]
    if vowels.include?(text[0].downcase)
      text+"way"
    else
      text_split = text.split(/([aeiou].*)/)
      text_split.push(text_split.shift).join("") + "ay"
    end
  end

  def to_pig_latin(text)
    text.split(" ").map {|word| piglatinize(word)}.join(" ")
  end
end
