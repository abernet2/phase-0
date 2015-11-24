# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: integer
# Output: boolean
# Steps:
  # 1) check if input is valid (16 digits)
  # 2) declare sum variable
  # 3) iterate end -> start
  # 4) add every number to sum:
  #    - if odd index, double number, add each digit to sum.
  # 5) if sum is multiple of 10, return true. else, return false.

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(card_number)
#     @card_number = card_number
    
#     if is_valid? == false
#       raise ArgumentError.new("Credit card number must be exactly 16 digits long.")
#     end
#   end
  
#   def is_valid?
#     @card_number.to_s.length == 16
#   end
  
#   def check_card 
#     sum = 0
#     odd = false
#     card_number = @card_number
    
#     while card_number > 0
#       current_digit = card_number%10
#       card_number /= 10
      
#       if odd
#         current_digit *= 2
#         sum += (current_digit/10) + (current_digit%10)
#       else
#         sum += current_digit
#       end
      
#       odd = !odd
#     end
    

#     sum%10 == 0
    
#   end
  
# end

# card = CreditCard.new(4563960122001999)
# card.check_card

# Refactored Solution
class CreditCard
  def initialize(card_number)
    check_input(card_number)
    @number = number
  end

  def check_card 
    sum = 0
    even = false 
    num = @number
    16.times do
      digit = get_next_digit(num)
      even ? add_doubled_digits(sum, digit) : sum += digit
      even = !even
    end
    return sum%10 == 0
  end
  
  def check_input(input)
    if input.to_s.length != 16
      raise ArgumentError.new("Input not 16 digits") 
    end
  end

  def add_doubled_digits(sum, num)
    num *= 2
    sum += num % 10 + num /10
  end

  def get_next_digit(card_number)
    digit = card_number % 10
    card_number / 10
    return digit
  end
  
end


# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
  Addressing how to handle odd numbers. I didnt understand that we had to add the digits
  and then implementing that was also challenging.
  
What new methods did you find to help you when you refactored?
  We agreed their wasn't much to do in order to refactor. I really wanted to make more methods
  in order to have the code be a little more readable, so I refactored along those lines, but no
  new methods really.

What concepts or learnings were you able to solidify in this challenge?
  I think we were supposed to solidify our understanding of classes, but I really didn't understand
  why this needed to be a class. If you are reviewing,  please feel free to share your thoughts, I
  don't see why this couldn't have been a method.
  
  Personally I feel like I fiddled with how to break up tasks into helper functions. The specification
  suggested a different way and I think it would have been more readable to go that way. Live and learn!

=end
