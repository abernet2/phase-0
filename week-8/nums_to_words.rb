# Numbers to English Words


# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode

# declare return container
# for every three digits
# isolate the ones digit
# 	unless its in the teens, add to back of return container
# isolate the tens digit
# 	unless its 1, change to twenty, thirty, etc
# isolate the hundreds digits
# 	append hundres to the number
# after every 3 digits, add the correct million, billion, trillion



# Initial Solution

# def nums_to_words(number)
# 	ones_digits = ["", "One ", "Two ", "Three ", "Four ", "Five ",
# 	"Six ", "Seven ", "Eight ", "Nine "]
# 	tens_digits = ["", "", "Twenty ", "Thirty ", "Fourty ",
# 	"Fifty ", "Sixty ", "Seventy ", "Eighty ", "Ninety "]
# 	ORDER_MAG = ["", "Thousand, ", "Million, "]
# 	teens = ["Ten ", "Eleven ", "Twelve ", "Thirteen ", "Forteen ", "Fifteen ", "Sixteen ",
#     "Seventeen ", "Eighteen ", "Nineteen "]
# 	ret = ""
# 	while(number > 0) do
# 		iter = ""
# 		one_digit = number % 10
# 		ten_digit = (number % 100 - one_digit) / 10
# 		hun_digit = (number / 100) % 10
# 		unless ten_digit == 1
# 			iter = tens_digits[ten_digit] + ones_digits[one_digit] + iter
# 		else
# 			iter = teens[one_digit] + iter
# 		end
# 		if (hun_digit > 0)
#      iter = ones_digits[hun_digit] + "Hundered-" + iter
#     end
#     number = number / 1000;
#     iter = iter + order_mag.shift * (iter.length <=> 0)
#     ret = iter + ret
#  end
#  return ret
# end


# puts nums_to_words(12010619)

# Refactored Solution
WORDS = [["", "One ", "Two ", "Three ", "Four ", "Five ",
"Six ", "Seven ", "Eight ", "Nine "], ["", "", "Twenty ", "Thirty ", "Fourty ",
"Fifty ", "Sixty ", "Seventy ", "Eighty ", "Ninety "]]
TEENS = ["Ten ", "Eleven ", "Twelve ", "Thirteen ", "Forteen ", "Fifteen ", "Sixteen ",
 "Seventeen ", "Eighteen ", "Nineteen "]
WORDS[2] = WORDS[0].map {|word| word + "Hundred " unless word == ""}
WORDS[2][0] = ""
ORDER_MAG = ["", "Thousand ", "Million ", "Billion ", "Trillion "]

def in_words(number)
 ret = ""
 while(number > 0) do
   word = hundred_to_words(number % 1000)
   number = number / 1000;
   ret = word + ORDER_MAG.shift * (ret.length <=> 0) + ret 
 end
 return ret
end

def hundred_to_words(number)
   digits = Array.new(3)
   digits.each_index do |i|
      digits[i] = number % 10
      number = number / 10
   end
   return WORDS[2][digits[2]] + TEENS[digits[0]] if digits[1] == 1 
   digits.each_with_index do |digit, i|
      digits[i] = WORDS[i][digit]
   end
   return digits.reverse.join
end

puts in_words(1234011)


# Reflection
# 
# What concepts did you review or learn in this challenge?
#  Coming from Javascript, I was really hoping there would be a way to store
#  a function in an array such that if the number was in the teens, it would
#  call a function instead of a string. There wasn't an automatic way to do
#  that (by that I mean if I got a proc from an array I'd need to call it).
#  
#  So I solidified some control flow concepts and also when to use arrays vs 
#  hashes.
# 
# 
# What is still confusing to you about Ruby?
#  A lot, but most of it is stuff I've just read in the book that we have yet
#  to touch on. I'm also still not a fan of the need to have end statements, I
#  find brackets to be much easier on the eyes and easier to maintain.
# 
# 
# What are you going to study to get more prepared for Phase 1?
#  Just go over the built-in methods, I feel like I know fewer than everyone else.
# 