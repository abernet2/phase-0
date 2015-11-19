# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")

def add_item(list,item,quantity=1)
	list[item] = quantity
end

def create_list(items, quantity = 1)
	list = Hash.new
	split_items = items.split(" ") 
	split_items.each do |item|
		add_item(list,item,quantity)
		list[item] = quantity
	end
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
