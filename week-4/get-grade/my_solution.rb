# Calculate a Grade

#IF greater than 90 return A
#ELSIF greater than 80 return B
#ELSIF greater than 70 return C
#ELSIF greater than 60 return D
#ELSE return F

# I worked on this challenge [with: David Diaz].


# Your Solution Below

def get_grade(average)
  if average >= 90
    return "A"
  elsif average >= 80
    return "B"
  elsif average >= 70
    return "C"
  elsif average >= 60
    return "D"
  else
    return "F"
  end
end

average = 3

puts get_grade(average)