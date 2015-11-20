# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Tom McHenry]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? array of integers
# What is the output? (i.e. What should the code return?) smaller array of integers (the mode)
# What are the steps needed to solve the problem? 

# Create a collection object
# iterate through the array
# if the number doesnt exist add to collection
# else add 1 to the count of the number in collection
# find the maximum count of the collection
# find other values with the maximum count
# take the max count, look at each key to see if any other keys have that value
# if so return that value as well
# return the collection of maximum counts

# 1. Initial Solution

def mode(array)
	numbers = Hash.new { |hash, key| hash[key] = 0 }
	array.each do |key| 
		if numbers.has_key?(key)
			numbers[key] += 1
		else
			numbers[key] = 1
		end
	end

	max = numbers.max_by { |key, value| value }
	ret = Array.new
	numbers.each do |key, value|
		if value == max[1]
			ret.push(key)
		end
		# puts "Key: #{key} value: #{value}" 
	end

	return ret
end

# 3. Refactored Solution

def mode(array)
 numbers = Hash.new(0)
  array.each do |key|
 	numbers[key] += 1
  end
  numbers = numbers.sort_by{|key,value| [-value, key]}
  ret = Array.new
  numbers.each do |key, value|
	  if value == numbers[0][1]
	  ret << key
	  end
  end
 return ret
end

array = [1,1,2,3,4,4,5,1,4,100,"st",-1,3,3,"st","st"]
max = mode(array)
puts "Max = #{max}"
# puts "Array test key = #{max[0]}  Value = #{max[1]}"


# 4. Reflection
=begin 
Which data structure did you and your pair decide to implement and why?
	We decided on a hash pretty quickly. Using an array would have caused all sorts of problems.
	the hash was more flexible with varied input and made it easy to add to the count.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
	I wouldn't say MORE successful, again we had to revisit the original pseudocode and add some steps.
	But the pseudocoding was definitely helpful.

What issues/successes did you run into when translating your pseudocode to code?
	The biggest issue was that we didn't account for returning longer modes in the pseudocode. I think that caused
	us to get in a position where we were throwing out implementation ideas left and right, and then basically 
	shooting them down right away because we weren't thinking the approach through. So going back to the pseudo 
	helped to make longer term decisions and to clarify what our task was. TL;DR: the translating was easier than
	the pseudocoding itself.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
	In our final solution, .each and .sort_by, although when we refactored we used reject and max. The difficulty came
	in us understanding their behavior well enough. For instance, we used reject to get rid of all values smaller than the max,
	but then we had an array of arrays, and from there we had difficulty formatting correctly. Overall, we resorted to sorting
	which feels kind of unsatisfactory 

=end