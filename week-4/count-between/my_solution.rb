# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  # if 0 then the count will be 0
  if list_of_integers.length
  	return 0
  end
  # declare count, start at 0
  count = 0
  # iterate through from lower_bound to upper_bound
  for i in lower_bound...upper_bound
  	if list_of_integers[i].kind_of? Integer
  		count += 1
  	end
  end
end