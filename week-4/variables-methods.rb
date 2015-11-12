puts "Yo gimme yur 1st name"
first = gets.chomp
puts "Please provide me with your middle name please"
middle = gets.chomp
puts "Now your last name, if you will"
last = gets.chomp
puts "Thanks "+first+" "+middle+" "+last+" now I'm going to go steal your identity hahah!"


puts "What is your FAVORITE number?"
fav = gets.chomp
fav = fav.to_i

# How do you define a local variable?
# 	You simply declare a variable from within a method.
# How do you define a method?
# 	With the format: def <methodname> (<params>) ..<code>.. end
# What is the difference between a local variable and a method?
# 	A method is a set of code that produces a desired result. A local
# 	variable is like any other variable, except it can only be used in
# 	a certain scope.
# 	A method almost always has local variables.
# How do you run a ruby program from the command line?
#   To run the contents of a ruby file, you would type 'ruby <file>.rb'   
# 	I usually include a method call at the end of my file, outside of 
# 	the scope of the method that I'm calling. If you want to pass in
# 	parameters from the command-line, you can use ARGS[], which is an 
# 	array of strings, separated by spaces, that are passed in if you 
# 	place them after your method call.# 	
# How do you run an RSpec file from the command line?
#   rspec <filename>.rb
# What was confusing about this material? What made sense?
# 	None of this confused me since I was pretty familiar with all of the
# 	content. I did start to do this challenge before my pairing session,
# 	and so it was a bit difficult to pick back up in the middle of things
# 	a day later.
# 	
# 	LINKS 
# 	
# 	https://github.com/abernet2/phase-0/tree/master/week-4/address
# 	https://github.com/abernet2/phase-0/tree/master/week-4/define-method
# 	https://github.com/abernet2/phase-0/tree/master/week-4/math

fav += 1
puts "Maybe you'd like this number better? " + (fav).to_s
