dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dict)
  string = string.split(" ")
  dict.reduce(Hash.new(0)) do |instances_of_words, word|
    string.each { |sub_string| instances_of_words[word] += 1 if sub_string.include?(word) }
    instances_of_words
  end
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
