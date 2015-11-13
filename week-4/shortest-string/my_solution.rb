# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  # set a holder for the return variable
  ret = list_of_words[0]
  # go through array
  list_of_words.each do |word|
  	# if an entry is smaller than the return
  	# then make it the return
  	word.length < ret.length ? ret = word : ()
  end
  return ret
end