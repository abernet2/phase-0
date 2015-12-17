require 'rspec/autorun'
# Pseduocode
# Input: A string of a number of words.
# Output: Every word in the original string in reverse.
# Steps: Store every word in the string into an array
#        Iterate over the array and reverse every word
#        Return new array with reversed words.

# Initial Solution
# def reverse_words(string)
#   word_array = string.split
#   final_string = ""
#   word_array.each {|x| final_string += x.reverse + " "}
#   return final_string.chomp(" ")
# end

# Refactored Solution
def reverse_words(string)
  word_array = string.split
  word_array.each {|x| x.reverse!}
  return word_array.join(" ")
end

def random_word(length = 5)
  rand(36**length).to_s(36)
end

describe "reverse_words" do
  it "does nothing to an empty string" do
    expect(reverse_words("")).to eq ""
  end
  it "reverses a single word" do
    word = random_word
    expect(reverse_words(word)).to eq word.reverse
  end
  it "reverses two words" do
    word1 = random_word
    word2 = random_word
    expect(reverse_words("#{word1} #{word2}")).to eq "#{word1.reverse} #{word2.reverse}"
  end
  it "reverses a sentence" do
    expect(reverse_words("Ich bin ein Berliner")).to eq "hcI nib nie renilreB"
  end
end