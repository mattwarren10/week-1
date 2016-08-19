# app.rb

require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")

black_rook_left = Rook.new(1, 8, "black")
white_rook_right = Rook.new(8, 1, "white")

black_king = King.new(5, 8, "black")

black_knight = Knight.new(7, 8, "black")

black_bishop = Bishop.new(6, 8, "black")

black_queen = Queen.new(4, 8, "black")

black_pawn = Pawn.new(5, 7, "black")

# *********************** ROOK *****************************

# puts "Valid Rook movements"
# puts "--------------------"

# p black_rook_left.can_move?(1, 5) == "yes"
# p black_rook_left.can_move?(5, 8) == "yes"
# p white_rook_right.can_move?(8, 3) == "yes"
# p white_rook_right.can_move?(2, 1) == "yes"


# puts "Invalid Rook movements"
# puts "----------------------"

# p black_rook_left.can_move?(2, 7) == "no"
# p black_rook_left.can_move?(2, 5) == "no"
# p white_rook_right.can_move?(3, 5) == "no"
# p white_rook_right.can_move?(5, 6) == "no"

# *********************** KING *****************************

# puts "Valid King movements"
# puts "--------------------"

# p black_king.can_move?(4, 8) == "yes"
# p black_king.can_move?(4, 7) == "yes"
# p black_king.can_move?(5, 7) == "yes"
# p black_king.can_move?(6, 7) == "yes"
# p black_king.can_move?(6, 8) == "yes"

# puts ""
# puts "Invalid King movements"
# puts "----------------------"


# p black_king.can_move?(3, 8) == "no"
# p black_king.can_move?(3, 7) == "no"
# p black_king.can_move?(3, 6) == "no"
# p black_king.can_move?(4, 6) == "no"
# p black_king.can_move?(5, 6) == "no"
# p black_king.can_move?(6, 6) == "no"

# ************************** KNIGHT ************************

# puts "Valid Knight movements"
# puts "--------------------"

# p black_knight.can_move?(6, 6) == "yes"
# p black_knight.can_move?(8, 6) == "yes"
# p black_knight.can_move?(5, 7) == "yes"

# puts "Invalid Knight movements"
# puts "--------------------"

# p black_knight.can_move?(5, 8) == "no"
# p black_knight.can_move?(6, 8) == "no"
# p black_knight.can_move?(7, 6) == "no"

# ************************** BISHOP ************************

# puts "Valid Bishop movements"
# puts "--------------------"

# p black_bishop.can_move?(5, 7) == "yes" #true
# p black_bishop.can_move?(4, 6) == "yes" #false
# p black_bishop.can_move?(3, 5) == "yes" #false
# p black_bishop.can_move?(7, 7) == "yes" #true
# p black_bishop.can_move?(8, 6) == "yes"

# puts ""
# puts "Invalid Bishop movements"
# puts "--------------------"

# p black_bishop.can_move?(5, 8) == "no"
# p black_bishop.can_move?(6, 7) == "no"
# p black_bishop.can_move?(6, 6) == "no"
# p black_bishop.can_move?(7, 8) == "no"

# ************************** QUEEN ************************

# puts "Invalid Queen movements"
# puts "--------------------"

# p black_queen.can_move?(4, 7) == "yes"
# p black_queen.can_move?(4, 1) == "yes"
# p black_queen.can_move?(7, 5) == "yes"

# puts ""
# puts "Invalid Queen movements"
# puts "--------------------"

# p black_queen.can_move?(5, 6) == "no"
# p black_queen.can_move?(3, 4) == "no"
# p black_queen.can_move?(6, 2) == "no"

# ************************** PAWN ************************

puts "Invalid Pawn movements"
puts "--------------------"
p black_pawn.can_move?(5, 6) == "yes"
p black_pawn.can_move?(5, 5) == "yes"


puts ""

puts "Invalid Pawn movements"
puts "--------------------"
p black_pawn.can_move?(4, 7) == "no"
p black_pawn.can_move?(6, 5) == "no"

