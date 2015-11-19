# Accountability groups

=begin REFLECTION
What was the most interesting and most difficult part of this challenge?
	The refactoring was the most interesting. There were a bunch of different ways that seemed promising
	I'm sure only some of them would have worked out well. I'm mostly happy with what I got.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
	Yes, but only in small doses. I feel like pseudo-coding is a big part of how companies evaluate
	your coding. It's important to understand how to break apart problems. You can focus on typing,
	you could focus on memorizing functions, data structures or other paradigms, but I think the ability
	to break problems apart is not something you can isolate so easily. So I'm going to keep at it and
	keep in mind the things I overlook in the pseudo.

Was your approach for automating this task a good solution? What could have made it even better?
	I knew in my head there had to be an easy way to turn a 20 x 1 array into a 4 x 5 array, but the
	probably specifically called for even groups, which would be tougher. That's why I wanted to
	iterate through the groups and add names at each pass. That way if we have 1 extra person, they
	go in the first group instead of a new group. While the 1st method I mentioned divided the array,
	I used the % function to prevent the clumping.

	I really felt like there was an elegant solution with the array constructor that I was missing.
	It lets you specify indices so it felt so close. The problem was really that it would have to put
	empty values or I would have to put in an if statement, which felt like a major downgrade. I basically
	am not happy that I had to declare the groups array before my loop, that would be the big thing I'd want
	to do to improve my code, declaring an empty array of arrays just doesn't feel right.


What data structure did you decide to store the accountability groups in and why?
	I chose arrays since there would be multiple people in a group. With a hash it wouldn't be natural to find
	your group mates. This method they are stored right next to you. Although I think it would have been much
	easier to implement the hash.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
	I copied the names from the website, pasted them (and formatted them) into a file and used the file module,
	so that was new. I learned about the #slice method and each_with_index/each_index enumerable methods.

=end


# define method
# input: array of names
# outpu: array of groups
# find number of names
# makes groups of 4 or 5 based on which has larger remainder (only matters for small numbers, so I left this out)
# make the correct number of groups
# shuffle names
# loop through each group adding a name at each pass until array empty
# return the array of groups
# 
# 
def load_names(filename)
	f = File.open(filename)
	lines = f.read.split("\n")
end

# Initial Solution
# def make_groups(names, group_size=4)
# 	group_num = (names.length / group_size) + 1
# 	shuffled_names = names.shuffle
# 	g_idx = 0
# 	groups = Array.new(group_num) { Array.new()  }

# 	shuffled_names.each do |name|
# 		groups[g_idx/group_size].push(name)
# 		g_idx += 1
# 	end
# 	return groups
# end

def make_groups(names, size=4)
	num = (names.length / size) + 1
	rand_names = names.shuffle
	groups = Array.new(num) { Array.new }
	rand_names.each_with_index do |name, index|
		groups[index%num].push(name)
	end
	return groups
end

def print_groups(groups)
	(0...groups.length).each do |group_number|
		puts "Group #{group_number}: #{groups[group_number]}"
	end
end

names = load_names("names.txt")
groups = make_groups(names, 5)
print_groups(groups)




