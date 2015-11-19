# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")

def add_item(list,item,quantity=1)
	list[item] = quantity
end

def create_list(items, quantity = 1)
	# Original
	# list = Hash.new
	# split_items = items.split(" ") 
	# split_items.each do |item|
	# 	add_item(list,item,quantity)
	# 	list[item] = quantity
	# end
	# 
	# Refactored (I'm not sure which one is more readable, but I had to see if this worked)
	split_items = items.split(" ")
	list = Hash[split_items.map { |item| [item, quantity] }]
	return list
end

master_list = create_list("food banana keys granola")


puts master_list
# steps: 
  # define method, define list as a hash, split string by space, iterate over each item to give it the default value of 1, display to console
  # set default quantity to 1
  # print the list to the console
# output: a hash that includes key value pairs of items:quantity

# Method to add an item to a list



add_item(master_list,"pizza",4)

puts master_list

# input: list, item name and optional quantity
# steps: define method, take the list new item and possibly quantity as arguments, add item and (q) to list
# output: an updated list with the new item (and quantity)

# Method to remove an item from the list

def remove_item(list,item)
	list.delete(item)
end

remove_item(master_list,"keys")

puts master_list


# input: list, item name
# steps: define the method, find the item on the list, delete it, and return updated list
# output: an updated list with item removed

# Method to update the quantity of an item


def update_quantity(list,item,quantity)
	add_item(list,item,quantity)
end

update_quantity(master_list,"banana",70)

puts master_list

# input: list, item, new quantity
# steps: define the method, find the item (key), update its value
# output: an updated list with one item having a new quantity

# Method to print a list and make it look pretty
# input: list
def display(list)

	puts "WELCOME TO YOUR GROCERY LIST!"
	list.each do|item,quantity|
		puts "#{item}: #{quantity}"
	end
end

display(master_list)


# steps: display list and other words to make grocery enjoyable
# output:

#What did you learn about pseudocode from working on this challenge?
# We chose to pseudocode everything rather than each individual function, and that helped to see how we would have to pass
# the list function into each method. It seemed like pseudo-code helped to flesh out the bigger picture.
#
#What are the tradeoffs of using Arrays and Hashes for this challenge?
# Using an array didn't make a whole lot of sense I thought. Essentially you would have to store an array of arrays to make
# the association between items and their quantities work. Even then, if you wanted to delete an item, you would have to go 
# through the array looking for it. 
#
# The good part of the hash is the ability to call out items by name, since that's how you would generally use a grocery
# list. 
#
#What does a method return?
# The value that you designate. It can either be designated explicitly or implicitly, but Ruby methods always return.
#
#What kind of things can you pass into methods as arguments?
# arrays, hashes, basically anything with a variable name, you can pass into methods, (including other methods).
#
#How can you pass information between methods?
# you can pass in a value which you will edit. For instance, you can pass in an array to add to. You can also return objets
# and then pass them into other methods.
#
#What concepts were solidified in this challenge, and what concepts are still confusing?
# Since Ruby is interpreted, it became clear that it reads a document from the top down from how we did our method calls. 
# I also, in the process of refactoring learned about how Hashes interact with arrays, specifically that they can take
# an array of arrays and hash them or they can output their contents to the same format. Finally, it felt like this was 
# basically a class we were creating, we just weren't allowed to encapsulate it. So I guess it helped to understand that 
# these classes work best when they cooperate with each other and have properly narrow functionalities.
