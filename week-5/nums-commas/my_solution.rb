# Numbers to Commas Solo Challenge

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

=begin
 0. Pseudocode

What is the input? an integer
What is the output? (i.e. What should the code return?) The same integer, in String form, with commas inserted
What are the steps needed to solve the problem?

Create and empty container for result
if the input is less than 1000, turn it to a String and return
Otherwise, divide by 1000 and modulo by 1000
if the divide result is still greater than 1000, repeat process until the result is smaller than 1000
(handle exceptions from cases where 0s are cut off)
Next put all the divide results in front of the remainders, separate them by a comma
return the result

=end

# 1. Initial Solution
# def separate_comma(num)
# 	result = ""
# 	if num < 1000
# 		return num.to_s
# 	end
# 	div = separate_comma(num / 1000)
# 	mod = (num % 1000).to_s
# 	if mod.length == 1
# 		mod = "00" + mod
# 	elsif mod.length == 2
# 		mod = "0" + mod
# 	end
# 	result = div + "," + mod
# end



# 2. Refactored Solution

#Pseudocode
=begin
turn number into string
insert commas every 3 digits from back
return the string
=end
def separate_comma(num)
	result = num.to_s
	len = (result.length)

	(len-3).step(1,-3) do |n|		# subtract 3 to prevent end-comma
		result.insert(n,",")
	end

	return result
end

puts separate_comma(100)

# 3. Reflection
=begin
	
What was your process for breaking the problem down? What different approaches did you consider?

I didn't consider too many approaches from the outset. I felt pretty good about my initial approach, 
but it quickly became clear that the zeroes would be an issue and that it didn't seem like there was
an elegant way to handle them. So I switched to treating the number like a string and inserting a 
comma every few characters.

Was your pseudocode effective in helping you build a successful initial solution?

For this problem I felt like the solutions were pretty straightforward. My approach is usually to get
a quick and dirty solution working and dealing with issues as they become apparent. Even as I say that
it sounds bad. So I think pseudo-coding was a help in that it made me consider more potential issues 
at an earlier planning stage. That said, the 0s issue escaped me and that was the biggest reason I 
changed my approach. I definitely see the value of pseudocoding, but I think I struggle to get the full
value on an easier problem like this.


What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using 
the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change 
the way your code works? If so, how?

I used the insert method. I spent a while looking into how to iterate backwards in steps of 3, it was
tough because you can't combine the method to increment in steps with the method to increment down 
instead of up. I'm familiar with java/c++ where I could have just written a for loop, although I guess
it would have been a lot uglier to read. The step method, in the end, made my solution much more streamlined.
Before I found it, I was going to reverse strings before and after the loop. I also had an issue where every 
time I add a comma, the length of the string grows causing issues.


How did you initially iterate through the data structure?
Do you feel your refactored solution is more readable than your initial solution? Why?

I initally used recursion because I though I was B-lining to short and clear code, but
it was an issue to deal with zeroes going that route. Next, as previously mentioned, I
reversed the array and then iterated from beginning to end in steps of 4 (3+comma), and
I think the reversal part of that process made that unreadable. My solution is definitely
more readable than my original, but perhaps slightly less so than my second. The only
reason it might be less readable is because I have to subtract 3 from the length. If I 
didn't subtract 3, it would always put a comma in the decimal place. It's really just 
a way to skip the first iteration, but it's confusing enough that I felt the need to put in a comment.

	
=end