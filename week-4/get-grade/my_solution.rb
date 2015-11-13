# Calculate a Grade

#IF greater than 90 return A
#ELSIF greater than 80 return B
#ELSIF greater than 70 return C
#ELSIF greater than 60 return D
#ELSE return F

# I worked on this challenge [with: David Diaz].


# Your Solution Below

def get_grade(average)
  case average
  when 90...100
    return 'A'
  when 80..90
    return 'B'
  when 70..80
    return 'C'
  when 60..70
    return 'D'
  else
    return 'F'
  end
end

average = 93

puts get_grade(average)