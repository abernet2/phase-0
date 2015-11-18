# Pad an Array

# I worked on this challenge with Jack Abernethy.
# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array, an integer, and an optional string.
# What is the output? (i.e. What should the code return?) If our integer is bigger than the length of our array, then we pad with the optional string or nil with elements up until the size of the integer.
# What are the steps needed to solve the problem? Define a method which accepts an array, an integer, and an optional string. Check the size of the array with the integer, if it is less than the integer, we pad the array with nil or the optional string until we have an array with the length of the integer, and return the new array. If the integer is less than the size of the array, we return the original array. 


# 1. Initial Solution

# def pad!(array, min_size, value = nil) #destructive
#  # Original Solution
#  # i = 0
#  #  while i < (min_size-array.length) do
#  #  array.push(value)
#  #  end
#  #  return array
# end


# def pad(array, min_size, value = nil) #non-destructive
#   j = 0
#   changed = []
#   while j < array.length do
#   changed.push(array[j])
#   j+=1
#   end
#   i = 0
#   while i < (min_size-array.length) do
#   changed.push(value)
#   i+=1
#   end
#   return changed
# end




# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
 	range = min_size - array.length
	(0...range).each do |i|
		array.push(value)
	end
	return array
end

def pad(array, min_size, value = nil) #non-destructive
  # copy input array into changed
  changed = array.dup
  diff = min_size - array.length
  
  diff.times do
	  changed.push(value)
  end

  return changed
end

a = [1,2,3]
puts pad!(a,5,"PAD")
puts a

# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
	Yeah I thought so. Once we started coding we saw some steps could be combined so I feel like that's a good
	sign our steps were sufficiently small.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
	Yes, we were both a little bit confused about what we had to do differently to make one method destructive. We found everything on
	google pretty easily.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
	Yes, and I don't know what else to say other than our implementation worked.

When you refactored, did you find any existing methods in Ruby to clean up your code?
	We found the .dup method which cleaned up copying the given array quite nicely. Then we had some fun using different
	types of loops.

How readable is your solution? Did you and your pair choose descriptive variable names?
	Looking back, I think our names were good descriptions for our purposes, but if I had no idea what the code was doing, there would
	probably be better choices of names. Changed makes sense to us because we're thinking destructive vs not, but if you didn't have 
	that in your head, return or result would probably be clearer. Same with diff, padding_size or something of that sort would have
	been a better choice of names.

What is the difference between destructive and non-destructive methods in your own words?	
	A destructive method tampers with input you give it, hence the "destructive." Functions with a bang (!) at the end of their name denote a destructive method,
	although if you're not careful you could unintentionally create your own. 

	A non-destructive method does not attempt to change the values of any of the input. Calling a non-destructive method you can be sure that your values will be
	the same before and after unless you specified otherwise.

	Basically both return the same value, a destructive method's primary purpose seems to be to prevent something like foo = foo.bar. Instead you can write foo.bar!
	which makes for cleaner code and probably better memore usage since you don't have to create a new array.

=end
