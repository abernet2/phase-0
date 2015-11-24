# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: During initialization, the correct answer
# 		 During guessing, a certain guess
# Output:
# 		 high, low or correct based on answer
# Steps:
# store the answer
# if the guess is correct, return correct
# otherwise determine if it is high or low
# and return thusly


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     # Your initialization code goes here
#     @answer = answer
#     @feedback = {-1 => :low, 0 => :correct, 1 => :high}
#     @solved = false
#   end

#   def guess(guess)
#   	response = @feedback[guess <=> @answer]
#   	response == :correct ? @solved = true : @solved = false
#   	return response
#   end

#   def solved?
#   	return @solved
#   end

#   # Make sure you define the other required methods, too
# end


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @feedback = {-1 => :low, 0 => :correct, 1 => :high}
    @solved = false
  end

  def guess(guess)
  	response = @feedback[guess <=> @answer]
  	@solved = response == :correct
  	return response
  end

  def solved?
  	return @solved
  end
end


game = GuessingGame.new(12)
game.guess(12)




# Reflection
=begin 
How do instance variables and methods represent the characteristics
and behaviors (actions) of a real-world object?

	They maintain the state of the virtual object that you have created.
	When I think of classes and instance variables, I always think of
	the Sims games. In those games you can click on an object and it 
	returns a list of actions. The fridge slowly gets empty, every sims
	mood changes as a day goes on, etc. Instance variables are where 
	the computer keeps track of these object specific things.

When should you use instance variables? What do they do for you?

	You should use instance variables whenver you need something to be
	remembered between method calls or after the initialization. They
	make sure your object stays the same between times when you use it.

Explain how to use flow control. Did you have any trouble using it in
this challenge? If so, what did you struggle with? Why do you think this
code requires you to return symbols? What are the benefits of using symbols?

	Flow control is the use of conditional statements to tell the program
	what code it should execute. I didn't have much trouble because my 
	initial reaction was to avoid using it becuase I think it makes the 
	code harder to follow. I think the code requires me to return symbols
	for memory usage. Symbols can only occur once, Strings can occur multiple
	but many times when you see the same string multiple times, it is actually
	different Strings in memory. So if I wanted to check if repsonse == correct,
	and correct was a string, then the machine would make a new correct string
	to check acgainst.

=end