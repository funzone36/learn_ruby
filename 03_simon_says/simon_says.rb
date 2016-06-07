def echo(x)
  "#{x}"
end

def shout(x)
  x = x.upcase!
  "#{x}"
end

def repeat(string, num = 2)
  num.times.collect { string }.join(' ')
end

def start_of_word(string, num)
  return string.byteslice(0, num)
end

def first_word(string)
  array = string.split(" ")
  return array[0]
end

def titleize(str)
    str.capitalize! 
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = str.split(" ").map {|word|
        if words_no_cap.include?(word)
            word
        else
            word.capitalize
        end
    }.join(" ")
  phrase
end
