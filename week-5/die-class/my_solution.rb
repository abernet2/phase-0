# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:  number of sides
# Output:  number, 1-6
# Steps:
=begin 
	Initialize a die object with the number of sides stored
	haves sides return the sides variable
	have roll pick a random variable between 1 and sides, return it
=end

# 1. Initial Solution

# class Die
#   def initialize(sides)
#   	if sides < 1  
#   		raise ArgumentError.new("A die must have at least 1 side")
#   	end
#   	@sides = sides
#   end

#   def sides
#     return @sides
#   end

#   def roll
#     rand(@sides) + 1
#   end

# end



# 3. Refactored Solution

# I don't really know what to refactor, so I added more error handling
class Die
  def initialize(sides)
  	valid_input?(sides)
  	@sides = sides
  end

  def sides
    return @sides
  end

  def roll
    rand(@sides) + 1
  end

  def valid_input?(input)
  	if !input.is_a? Integer
  		raise ArgumentError.new("Invalid input, must put in an integer")
  	elsif input < 1
  		raise ArgumentError.new("A die must have at least 1 side")
	end		
  end
end

# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
	An argumenterror is a way to prevent improper arguments from going into your method.
	It's similar to simply puts-ing a message, except it communicates with Ruby's
	Error handling to specify exactly what type of error occured and where.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
	Rand was new and ArgumentError was new, but I didn't have any issues with them since
	they are both really similar to features in Java.

What is a Ruby class?
	A class is like a blueprint for objects. The intro video uses the example of a string.
	String is a class, each individual string you see is an instance of that class. 

Why would you use a Ruby class?
	Classes	help bring predictability and uniformity to your code. For instance, in my error handling
	I checked if the input was an Integer. Whole numbers are of the integer class, so doing this
	in one step makes sure I don't have any non-numbers or numbers with decimals (how could
	you have a fraction of a side?)

What is the difference between a local variable and an instance variable?
	A local variable is declared within the scope of a method, while an instance variable
	exists as long as its surrounding object exists.

Where can an instance variable be used?
	By default, an instance variable can only be used in the object that houses it.
	In case there is any confusion, only in that certain instance of its class. For
	example, if Strings have instnace variables for their letters, "Yes" and "No" 
	would need to have their own independent length instance variables.

	In ruby you can use the @attr_reader, @attr_writer and @attr_accessor to access an
	instance variable from outside of the method. Usually an instance variable can only
	be accessed from inside the code comprising a class definition. This helps to prevent
	other lines of code from corrupting your objects. The @attr_* override that behavior
	in case you want to risk it.

=end