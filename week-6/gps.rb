# Your Names
# 1) Jack Abernethy
# 2) Kaybi Deangelo

# Guide : Charlotte

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  # Error checking
  if !menu.has_key?(item_to_make)
    raise ArgumentError.new ("#{item_to_make} is not a recognized bakery item.")
  end

  # Finding serving size and amount of hungry leftover
  serving_size = menu[item_to_make]
  hungry_people = order_quantity % serving_size

  # Returns String based on whether there are hungry people left or not 
  
  if hungry_people == 0
   puts "Make #{order_quantity/serving_size} of #{item_to_make}"
  else
   puts "Make #{order_quantity/serving_size} of #{item_to_make}, you have #{hungry_people} hungry people. You should buy #{hungry_people} cookie(s) for them. Or make #{order_quantity/serving_size + 1} of #{item_to_make}. You will have #{serving_size - hungry_people} leftover slices."
  end

end

serving_size_calc("pie", 7)
serving_size_calc("pie", 8)
serving_size_calc("cake", 5)
serving_size_calc("cake", 7)
serving_size_calc("cookie", 1)
serving_size_calc("cookie", 10)
# p serving_size_calc("salad", 45)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
	This challenge really re-emphasized readable variable names. We had a lot of trouble figuring out the purpose of this method.
	In hindsight we probably should have changed the method name too.

Did you learn any new methods? What did you learn about them?
	No I didn't learn any new methods in this challenge.

What did you learn about accessing data in hashes? 
	If you're going to use a hash, use a hash. It's so much easier to just pass in the key than to do whatever approach they chose.

What concepts were solidified when working through this challenge?
	Refactoring and readability, it was just a new take since this was the first time we had to refactor code where we didn't know
	the context, the purpose or anything. It's a whole different experience than when you write your own code. You never want to name
	a variable with mod, for instance, because you can already see that math formula, you want to describe what each variable's purpose
	is and lay things out logically.

=end