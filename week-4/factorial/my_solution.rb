# I worked on this challenge with Yi Lu

def factorial(n)
# Set initial factorial value as 1
  factorial = 1
# Multiply the initial factorial by 2, until reaching the given number
  i = 2
  while i <= n
    factorial *= i
    i += 1
  end
# Return final factorial
  return factorial
end

