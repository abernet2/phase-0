#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
	def initialize(name)
		@name = name
	end
	attr_accessor :name
end


class Greetings
	def initialize
		@name = NameData.new("Dude")
		@message = "hello"
	end

	def hello
		puts "What up, #{@name.name}!!???"
	end
end


g = Greetings.new
g.hello


# Reflection
=begin 
release1
---------
What are these methods doing?
	Basically just accessing instance variables, but there are different
	methods to read and write to them. Also a printing method.

How are they modifying or returning the value of instance variables?
	They either straight up return an instance variable or they take
	an input and assign it to an instance variable.

release2
--------
What changed between the last release and this release?
	The age method was taken out and replaced with the attr_reader
	code for age.

Is this code simpler than the last?
	Yes a little bit, it is confusing that they only did this for one
	, the inconsistency is a little strange.

release3
---------
	The age method was also designated the attr_write, which allows
	one to write to that instance variable without an explicit method.

	They took out the age-setting method.

	This is also a little simpler, but inconsistent.

release6
---------
What is a reader method?
	A reader method lets you read an instance variable outside of a method
	declaration, but not write to it.

What is a writer method?
	A writer method can write but not read to an instance variable outside
	of the method declaration.

What do the attr methods do for you?
	They let you access instance variables from outside their usual scope.

Should you always use an accessor to cover your bases? Why or why not?
	No, there's a reason you can't access memeber variables by default.
	I believe in other languages that unless you specify, you can access
	these variables as if they were assigned an accessor. This, however,
	can lead to unpredictable results as users can change code you don't
	want them too. It generally breaks down the encapsulation of your program.

What is confusing to you about these methods?
	I'm kind of confused on whether under the hood they are declaring new functions
	or if under the hood they are simply allowing access to the variables. So I looked
	into it and it seems like they definitely create a function. I also found this
	http://stackoverflow.com/questions/2131921/how-to-make-instance-variables-private-in-ruby
	stackoverflow question that talks about how even though the instance variables aren't part
	of the public API, you can always access them if need be.

=end