# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode

# initialize
# INPUT: array of flavors
# create array of pex, the value will be the flavor

# count the number of Pez remaining in a dispenser so I can know how many are left.
# OUTPUT: pez.length

# take a Pez from the dispenser so I can eat it.
# OUTPUT: shift a pez from the array

# add a Pez to the dispenser so I can save a flavor for later.
# INPUT: new pez
# Push new pez onto the array

# see all the flavors inside the dispenser so I know the order of the flavors coming up.
# Join the pex array


# Initial Solution

class PezDispenser

  def initialize(pez)
    @pez = pez
  end
  
  def pez_count
    @pez.length
  end
  
  def add_pez(pez)
    @pez.push(pez)
  end
  
  def get_pez
    @pez.shift
  end
  
  def see_all_pez
    @pez.reverse.join("\n")
  end

end



# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
puts flavors
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection
# 
# What concepts did you review in this challenge?
#   The biggest review was remembering syntax and function names after
#   all that javascript. We got confused, for instance, about curly braces
#   and do...end. We also confused to_s for join. Little things like that.
#   Also I had some trouble figuring out the user stories.
#   
# What is still confusing to you about Ruby?
#   Honestly, nothing that we've gone over so far. Which scares me a little
#   bit, the calm before the storm! Outside of what we've gone over, lambdas,
#   procs and all that jazz are a mystery to me!
#   
# What are you going to study to get more prepared for Phase 1?
#   I'm going to really focus on Javascript to get prepared, and I will probably
#   look over the chapters in Grounded Rubyist that we weren't required to read.