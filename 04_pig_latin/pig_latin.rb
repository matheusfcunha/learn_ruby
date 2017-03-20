def translate(sentence)
  sentence = sentence.downcase.split(/ /)
  sentence.collect! do |word|
    letters = word.split(//)
    letters.each_index do |letter|
      if ["a", "e", "i", "o", "u"].include?(letters[letter])
        unless letters[letter] == "u" && letters[letter-1] == "q"
          if letter == 0
            word = letters.join + "ay"
          else
            word = (letters[letter..-1] + letters[0..(letter-1)]).join + "ay"
          end
          break
        end
      end
    end

    word
  end
  return sentence.join(" ")
end
