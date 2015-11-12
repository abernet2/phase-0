# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#	errors.rb
# 2. What is the line number where the error occurs?
# 	170
# 3. What is the type of error message?
#   	syntax
# 4. What additional information does the interpreter provide about this type of error?
#  	unexpected end of input, expecting keyword end
# 5. Where is the error in the code?
#	theres only one end keyword for the function and while loop
# 6. Why did the interpreter give you this error?
#	it goes through to match keywords to end to understand what code
# 	goes to what function or what loop. If you mess up it will know 
#	a keyword is unmatched

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# 	38
# 2. What is the type of error message?
# 	name error
# 3. What additional information does the interpreter provide about this type of error?
# 	undefined local variable south_park
# 4. Where is the error in the code?
#	line 38 where it says south park. South Park was never defined 
# 5. Why did the interpreter give you this error?
#	Because we never declared south park

# --- error -------------------------------------------------------

# 	cartman()

# 1. What is the line number where the error occurs?
#   	58
# 2. What is the type of error message?
#   	NoMethodError	
# 3. What additional information does the interpreter provide about this type of error?
#	Undefined Method "cartman" for Main:Object
# 4. Where is the error in the code?
# 	cartman() needs to be defined, or taken out
# 5. Why did the interpreter give you this error?
#	the interpreter took cartman, looked for a matching function and 
# 	found nothing

# --- error -------------------------------------------------------

def cartmans_phrase(phrase="I'm not fat; I'm big-boned!")
  puts phrase
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 	69
# 2. What is the type of error message?
# 	ArgumentError	
# 3. What additional information does the interpreter provide about this type of error?
#	wrong number of arguments
# 4. Where is the error in the code?
#	on 73 when we call cartmans_phrase, it doesnt take an argument
# 5. Why did the interpreter give you this error?
#	The interpreter doesn't see the function's code until it is called
#	When the function is called it goes to the line where the function
#	is defined. When it has an argument and the function doesn't want
#	one it throws the argument error. Which is a good thing because
# 	otherwise you might not notice, and cartman's phrase would always
#	print the same thing regardless of the value you pass in

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Screw you guys I'm going home!")

# 1. What is the line number where the error occurs?
#	93
# 2. What is the type of error message?
#	Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#	wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#	97
# 5. Why did the interpreter give you this error?
#	because we called a function that requires an argument with no arguments



# --- error -------------------------------------------------------

def cartmans_lie(lie, name="Kyle")
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#	114
# 2. What is the type of error message?
# 	ARgument Error
# 3. What additional information does the interpreter provide about this type of error?
#	wrong # of Arguments (1 for 2)
# 4. Where is the error in the code?
# 	118
# 5. Why did the interpreter give you this error?
#	Again, wrong number of arguments, I set the name default to kyle

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 	133
# 2. What is the type of error message?
#	TypeError
# 3. What additional information does the interpreter provide about this type of error?
#	in * String can't be coerced into Fixnum
# 4. Where is the error in the code?
#	the person is trying to get 5 of those strings, but the interpreter
#	needs them to be positioned the other way around
# 5. Why did the interpreter give you this error?
#	When it sees a Fixnum followed by an *, it calls an operation that can't
#	accept a string. If you switch it the other way around, then it knows to
#	call a different operation.
# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
#
#	150
# 2. What is the type of error message?
#	Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# 	`/' divided by 0
# 4. Where is the error in the code?
#	divided amount_of_kfc_left by 0
# 5. Why did the interpreter give you this error?
#	because there's no way to mathemtically compute that

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#	167
# 2. What is the type of error message?
#	LoadError
# 3. What additional information does the interpreter provide about this type of error?
#	cannot load such file
# 4. Where is the error in the code?
#	because the required file does not exist
# 5. Why did the interpreter give you this error?
#	because it looked for the file and it wasn't where we specified


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?
#	the nameerror on South Park, it was early in the process, and I wasn't
#	sure what you were trying to do with South Park.
#How did you figure out what the issue with the error was?
#	I searched the document for another instance of south_park, and there wasn't one
#Were you able to determine why each error message happened based on the code? 
#	Yes
#When you encounter errors in your future code, what process will you follow to help you debug?
#	I'll definitely pay more attention to the type of error at the end
#	of the message, I never really noticed those before. Other than that
#	Definitely see what's happening at the line number first and go from
#	there.
