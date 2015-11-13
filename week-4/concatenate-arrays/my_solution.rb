# Concatenate Two Arrays

# I worked on this challenge [by myself].


def array_concat(array_1, array_2)
  # create new holder of correct length
  ret = []
  # iterate over first array
  array_1.each do |entry|
  #copy contents into holder
  	ret << entry
  end
  # iterate over second array, append to end
  array_2.each do |entry|
  	ret << entry
  end
  return ret
end