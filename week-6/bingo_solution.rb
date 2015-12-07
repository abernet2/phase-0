# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:
# I want a hash whose values are arrays for my board

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #  generate a random number n 1-100
  #  generate a random number L 0-4
  #  return random number plus b if L is 0, i if L is 1, etc 

# Check the called column for the number called.
  # separate number from letter
    #  remove letter from strings
    #  turn remaining part into number
  # check the array associated with that letter for the value
    # turn it to x if it exists

# If the number is in the column, replace with an 'x'
  # iterate through column, replace with x if there is a match

# Display a column to the console
  # iterate through column printing each number on its own line

# Display the board to the console (prettily)
  # Iterate printing row by row of values

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     bingo_board = board.transpose
#     @board = {:B => bingo_board[0], :I => bingo_board[1],
#       :N => bingo_board[2], :G => bingo_board[3], :O => bingo_board[4]}
#     @letters = [:B, :I, :N, :G, :O]
#   end

#   def call
#     num = rand(100) + 1
#     letter = @letters[rand(5)]
#     return "#{letter.to_s}#{num}"
#   end

#   def check(call)
#     call.upcase!
#     letter = call[0].to_sym
#     call[0] = ''
#     num = call.to_i
#     @board[letter].map! do |cell|
#       cell == num ? cell = 'XX' : cell = cell
#     end
#   end

#   def print_column(letter)
#     col = @board[letter.to_sym]
#     col.each { |cell| puts "|#{cell}|"}
#   end

#   def print_board
#     print "  B     I     N     G     O "
#     5.times do |i|
#       puts
#       @board.each do |letter, col|
#          print " |#{col[i]}| "
#        end
#     end
#   end

# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    bingo_board = board.transpose
    @board = {"B" => bingo_board[0], "I" => bingo_board[1],
      "N" => bingo_board[2], "G" => bingo_board[3], "O" => bingo_board[4]}
  end

  def call
    num = rand(100) + 1
    letter = ["B", "I", "N", "G", "O"].sample
    return "#{letter}#{num}"
  end

  def check(call)
    letter = call[0]
    num = call[1]
    @board[letter].map! do |cell|
      cell == num ? cell = 'XX' : cell = cell
    end
  end

  def print_column(letter)
    col = @board[letter]
    col.each { |cell| puts "|#{cell}|"}
  end

  def print_board
    print "  B     I     N     G     O "
    5.times do |i|
      puts
      @board.each do |letter, col|
         print " |#{col[i]}| "
       end
    end
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
puts "Gen Letter #{new_game.call}"
new_game.check(['B',22])
new_game.print_column("B")
new_game.print_board

#Reflection

=begin 
How difficult was pseudocoding this challenge? What do you think of
your pseudocoding style?
  My initial pseudocoding took a much different approach because of the type
  of bingo I wanted to implement. When each number is restricted to a certain letter,
  my pseudocode would fit better.

  My style so far is definitely very minimal and probably a little broader than what is
  recommended, but that's how I think and so far it hasn't seemed like an issue.

What are the benefits of using a class for this challenge?
  I can change how the board is stored without worrying about how it would affect other
  users.

How can you access coordinates in a nested array?
  array[i][j]. The 'i' index tells which nested array to access and the j accesses
  a specific element.

What methods did you use to access and modify the array?
  I used the hashing function lol. It seemed like essentially if I mapped the letters to 
  certain columns I would essentially be manually hashing, so I stored each array under
  a letter header.

Give an example of a new method you learned while reviewing the Ruby docs.
Based on what you see in the docs, what purpose does it serve, and how is it called?
  I learned how to use the gsub which allows you to replace a regular expression
  with an argument. It's pretty straightforward if you understand regular expressions,
  although I wish it had a better name! There's probably still a more straightforward
  way to save the strings that is more readable, but I'm happy with this for now.

How did you determine what should be an instance variable versus a local variable?
What do you feel is most improved in your refactored solution?
  This question caused me to go back and rethink how I laid things out. Basically, I
  think it's just what variables need to be kept track of between various method calls
  and what variables need to be touched by multiple methods. In my original case,
  I made letters an instance variable, but it works better as an instance variable 
  since you only need it for the #call method


=end
