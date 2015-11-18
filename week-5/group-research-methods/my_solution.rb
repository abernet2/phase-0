# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3 - Jack Abernethy
def my_array_sorting_method(source)
  result = source.sort
end

def my_hash_sorting_method(source)
  result = source.sort_by { |a| [a[1], a[0]] }
end

arr = ["abd",'zxe','cdeee','abc']
hash = {
  "cat" => 9,
  "bronco" => 9,
  "tiger" => 5
}
puts my_array_sorting_method(arr)
puts my_hash_sorting_method(hash)

# Identify and describe the Ruby method(s) you implemented.
# The array sorting method comes down to the .sort method.
# Sorting methods comes in the enumarable module which works
# for many types of objects. Running the enumerable sort requires the <=>
# function of the class that calls it, in this case array or hash. 
# The <=> operator compares two instances of an object and returns 1, 0 or -1 (<.>, =).
# 
# The sort method uses this method to implement a sorting
# algorithm, although you can override this by passing the
# function a block as I did in hash version of my function.
# 
# Thus to better understand how both work, it's best to 
# understand how their <=> operators work. The String <=>
# works by comparing two strings by alphabetical order. This
# starts with the first digit and will keep comparing until
# two values disagree. If the strings are of different lengths,
# but otherwise equal, it returns that the longer is greater.
# 
# The hash function doesn't have a <=> specified that I could find.
# Functionally the sort method sorts by key and not value. This happens
# because the sort function first turns the hash into an array of 
# 2 cell arrays ([key, value]). Thus when I specify a[1] in my method,
# a is each one of these arrays and thus a[1] would specify the value element.
# 
# 
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
