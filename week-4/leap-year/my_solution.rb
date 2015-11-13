# I worked on this with Yi Lu
def leap_year?(n)
  divisible_by_4 = (n % 4 == 0)
  divisible_by_100 = (n % 100 == 0)
  divisible_by_400 = (n % 400 == 0)


  return divisible_by_400 || (!divisible_by_100 && divisible_by_4)
end
