
def acronymize(sentence)
  # split the sentence into word
  words = sentence.split
  letters = []
  # loop over array and take the first letter of each word
  words.each do |word|
    # store first letters (in an array?)
    letters << word[0]
  end
  # puts them back together & upcase
  return letters.join.upcase
end


# Mock tests

puts acronymize("Frequently Asked Questions") == "FAQ"
puts acronymize("") == ""
puts acronymize("AWAY FROM KEYBOARD") == "AFK"
puts acronymize("working from home") == "WFH"
