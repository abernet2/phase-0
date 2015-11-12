# Format an Address

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def make_address(street, city, state, zip) 
   ret = "You live at " + street + ", "
   ret = ret + "in the beautiful city of " + city +", "
   ret = ret + state + ". "
   ret = ret + "Your zip is " + zip.to_s + "."
   return ret
end
