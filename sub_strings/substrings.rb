dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dict)
  result = dict.reduce({}) do |ac, word|
    word_occurance = 0
    new_string = string.downcase
    while new_string.include?(word)
      word_occurance += 1
      new_start = new_string.index(word) + 1
      new_string = new_string[new_start..-1]
    end
    if word_occurance > 0
      ac[word] = word_occurance
    end
    ac
  end
  result
end

p substrings('below', dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)