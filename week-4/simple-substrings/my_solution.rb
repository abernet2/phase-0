# Simple Substring

# I worked on this challenge alone

# Your Solution

def welcome (address)
	split_addr = address.split
	for word in split_addr
		if word.upcase == "CA"
			return "Welcome to California"
		end
	end
	return "You should move to California"
end