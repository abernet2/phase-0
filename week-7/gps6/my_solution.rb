# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# includes a file based on a relative path
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_hashy_hash)
    @data = state_hashy_hash
  end

  def virus_effects(state)
    death_toll = predicted_deaths(state)
    months = time_until_spread(state)
    puts "#{state} will lose #{death_toll} people in this outbreak and will spread across the state in #{months} months.\n\n"
  end

  def fifty_state_report
    @data.each do |state, data|
      virus_effects(state)
    end
  end

  private

  def predicted_deaths(state)
    multiplier = density_level(state) * 0.1
    multiplier = 0.05 if multiplier == 0
    number_of_deaths = @data[state][:population] * multiplier
    number_of_deaths.floor
  end

  def time_until_spread(state)
    months = 2.5 - density_level(state) * 0.5   # decrements by half a month for every density level of 50
  end


  # returns a density level 0-4
  def density_level(state)
    pop_density = @data[state][:population_density].to_i
    pop_density = 200 if pop_density > 200
    density_level = pop_density / 50
  end

end


#=======================================================================

# DRIVER CODE

my_vp = VirusPredictor.new(STATE_DATA)
my_vp.fifty_state_report

#=======================================================================
# Reflection Section
=begin 
What are the differences between the two different hash syntaxes shown in the state_data file?
  One uses rocket syntax, the other uses symbols, which sytactically looks like key > val
  vs key: val. Since symbols are written like :sym, reversing the colon is an intuitive
  way to make a hash with symbols, which is why it doesn't work with strings. If you used
  a string with : it would force it into a symbol.

What does require_relative do? How is it different from require?
  It includes a file based on a relative path, vs require which searchs through a system's paths.

What are some ways to iterate through a hash?
  You can use #each to iterate through each key, value pair or through each as a an array that holds
  both.

When refactoring virus_effects, what stood out to you about the variables, if anything?
  The default was to pass in instance variables, which is completely unneccessary. The method
  you are calling already can access the variables. 

What concept did you most solidify in this challenge?
  How/when to pass in variables and declare instance variables. I also learned about constants.
  One thing I really struggled with in my refactor was whether to make my helper functions take
  a state name or the data and simply calculate that data. I kind of think the latter would be
  better but I don't want to do another refactor after all the time I spent. If they took, for
  instance, the density level vs the state name then I would only need to calculate that once.

  It's tough to figure out which variables to pass and what the implications of that pass will
  be down the line.

=end