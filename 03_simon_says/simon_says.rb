#write your code here

def echo say
  say = say
end

def shout say
  say = say.upcase
end

def repeat say, num = 2
  say << " "
  say = say * num
  say.chop
end

def start_of_word say, num
  say[0..num - 1]
end

def first_word say
  # say = say.split.first //SIMPLE WAY
  words = say.split
  words.first
end

def titleize say
    say.capitalize!  # capitalize the first word in case it is part of the no words array
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = say.split(" ").map {|word|
        if words_no_cap.include?(word)
            word
        else
            word.capitalize
        end
    }.join(" ") # I replaced the "end" in "end.join(" ") with "}" because it wasn't working in Ruby 2.1.1
  phrase  # returns the phrase with all the excluded words
end
