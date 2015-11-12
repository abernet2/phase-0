# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  # Check for 0 length input
  has_zero = a== 0 || b == 0 || c == 0
  is_valid = a < b + c && b < a + c && c < b + a

  return !has_zero && is_valid

end

a = 1
b = 1
c = 1
puts valid_triangle?(a, b, c)
