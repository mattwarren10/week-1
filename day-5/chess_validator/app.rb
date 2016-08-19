# app.rb

require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")

black_rook_left = Rook.new(1, 8, "black")
white_rook_right = Rook.new(8, 1, "white")

black_king = King.new(5, 8, "black")
black_knight = Knight.new(7, 8, "black")

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

puts "Valid Knight movements"
puts "--------------------"

p black_knight.can_move?(6, 6) == "yes"
p black_knight.can_move?(8, 6) == "yes"
p black_knight.can_move?(5, 7) == "yes"

puts "Invalid Knight movements"
puts "--------------------"

p black_knight.can_move?(5, 8) == "no"
p black_knight.can_move?(6, 8) == "no"
p black_knight.can_move?(7, 6) == "no"


