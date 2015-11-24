# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array of strings
# Output: a single, randomly chosen, string
# Steps:
# copy the labels onto the die object
	# Make sure there are no duplicates
# treating each side as a number,
# find a random number to choose a random side
# 


# Initial Solution

# class Die
#   def initialize(labels)
#   	raise ArgumentError.new("Must have at least 1 label") if labels == []
# 	@sides = []
# 	@length = labels.length
#   	duplicate = Hash.new(false)
#   	labels.each do |label|
#   		unless duplicate[label]
#   			@sides << label 
#   			duplicate[label] = true
#   		end
#   	end
#   end

#   def sides
#   	@length
#   end

#   def roll
#   	side = rand(sides)
#   	@sides[side]
#   end
# end





# Refactored Solution

class Die
  def initialize(labels)
  	raise ArgumentError.new("Must have at least 1 label") if labels == []
	@sides = labels.dup
  end

  def sides
  	@sides.length
  end

  def roll
  	side = rand(sides)
  	@sides[side]
  end
end

# Reflection
=begin
What were the main differences between this die class and the last one you
created in terms of implementation? Did you need to change much logic to get
this to work?
	
	The strings and testing for repetitive labels. Although I was confused on
	the specification. I thought we had to check for duplicate labels, it was-
	n't until writing this that I realized otherwise. I thought it seemed strange
	and bad for probability to check for duplicates.

	Comapred to the other method, no just used the number as an index rather than
	return the number itself.

What does this exercise teach you about making code that is easily changeable or
modifiable? 

	To be perfectly honest, I'm not quite sure. Maybe that you can use indices for
	finding random elements, but that doesn't feel satisfying. I must say I'm
	enjoying that Ruby doesn't make me specify types like Java, that makes this sort
	of reusability waaaay easier.

What new methods did you learn when working on this challenge, if any?
	
	I didn't learn any new methods, although even though it was completely useless,
	I'm proud of my use/naming of the hash on my initial solution.

What concepts about classes were you able to solidify in this challenge?

	Sounds funny, but I guess the rand class. I thoughtlessly put in a +1
	after the random number because that's what I did in my die class. This
	caused all sorts of problems just because I forgot that I needed it to
	return 0s.

=end