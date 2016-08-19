# app.rb
require 'pry'
require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/board.rb")

black_rook1 = Rook.new(0, 7, "black", "bR")
black_rook2 = Rook.new(7, 7, "black", "bR")
white_rook1 = Rook.new(0, 0, "white", "wR")
white_rook2 = Rook.new(7, 0, "white", "wR")
black_knight1 = Knight.new(1, 7, "black", "bN")
black_knight2 = Knight.new(6, 7, "black", "bN")
white_knight1 = Knight.new(1, 0, "white", "wN")
white_knight2 = Knight.new(6, 0, "white", "wN")
black_bishop1 = Bishop.new(2, 7, "black", "bB")
black_bishop2 = Bishop.new(5, 7, "black", "bB")
white_bishop1 = Bishop.new(5, 0, "white", "wB")
white_bishop2 = Bishop.new(2, 0, "white", "wB")
black_queen = Queen.new(3, 7, "black", "bQ")
white_queen = Queen.new(3, 0, "white", "wQ")
black_king = King.new(4, 7, "black", "bK")
white_king = King.new(4, 0, "white", "wK")

black_pawn1 = Pawn.new(1, 6, "black", "bP")
black_pawn2 = Pawn.new(2, 6, "black", "bP")
black_pawn3 = Pawn.new(3, 6, "black", "bP")
black_pawn4 = Pawn.new(4, 6, "black", "bP")
black_pawn5 = Pawn.new(5, 6, "black", "bP")
black_pawn6 = Pawn.new(6, 6, "black", "bP")
black_pawn7 = Pawn.new(7, 6, "black", "bP")
black_pawn8 = Pawn.new(8, 6, "black", "bP")
white_pawn1 = Pawn.new(0, 1, "white", "wP")
white_pawn2 = Pawn.new(1, 1, "white", "wP")
white_pawn3 = Pawn.new(2, 1, "white", "wP")
white_pawn4 = Pawn.new(3, 1, "white", "wP")
white_pawn5 = Pawn.new(4, 1, "white", "wP")
white_pawn6 = Pawn.new(5, 1, "white", "wP")
white_pawn7 = Pawn.new(6, 1, "white", "wP")
white_pawn8 = Pawn.new(7, 1, "white", "wP")

game = Board.new
game.add_piece(0, 7, black_rook1)
game.add_piece(7, 7, black_rook2)
game.add_piece(0, 0, white_rook1)
game.add_piece(7, 0, white_rook2)
game.add_piece(1, 7, black_knight1)
game.add_piece(6, 7, black_knight2)
game.add_piece(1, 0, white_knight1)
game.add_piece(6, 0, white_knight2)
game.add_piece(2, 7, black_bishop1)
game.add_piece(5, 7, black_bishop2)
game.add_piece(2, 0, white_bishop1)
game.add_piece(5, 0, white_bishop2)
game.add_piece(3, 7, black_queen)
game.add_piece(3, 0, white_queen)
game.add_piece(4, 7, black_king)
game.add_piece(4, 0, white_king)
game.add_piece(0, 6, black_pawn1)
game.add_piece(1, 6, black_pawn2)
game.add_piece(2, 6, black_pawn3)
game.add_piece(3, 6, black_pawn4)
game.add_piece(4, 6, black_pawn5)
game.add_piece(5, 6, black_pawn6)
game.add_piece(6, 6, black_pawn7)
game.add_piece(7, 6, black_pawn8)
game.add_piece(0, 1, white_pawn1)
game.add_piece(1, 1, white_pawn2)
game.add_piece(2, 1, white_pawn3)
game.add_piece(3, 1, white_pawn4)
game.add_piece(4, 1, white_pawn5)
game.add_piece(5, 1, white_pawn6)
game.add_piece(6, 1, white_pawn7)
game.add_piece(7, 1, white_pawn8)

7.downto(0) do |line|
	print "#{line}"
	game.pieces[line].each do |p|
		print "| #{p.name}"
	end
	puts "|"
end
binding.pry
# 7.downto(0) do |piece|
# 	print "#{piece}"
# 	movies.each do |m|
# 		print "|"
# 		if m.rating.round >= rating
# 			print '#'
# 		else
# 			print '_'
# 		end
# 	end
# 	puts "|"
# end

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

# p black_queen.can_move?(8, 8) == "yes"
# p black_queen.can_move?(4, 1) == "yes"
# p black_queen.can_move?(6, 6) == "yes"

# puts ""
# puts "Invalid Queen movements"
# puts "--------------------"

# p black_queen.can_move?(5, 6) == "no"
# p black_queen.can_move?(3, 4) == "no"
# p black_queen.can_move?(6, 2) == "no"

# ************************** BLACK PAWN ************************

# puts "Invalid Pawn movements"
# puts "--------------------"
# p black_pawn.can_move?(5, 6) == "yes"
# p black_pawn.can_move?(5, 5) == "yes"


# puts ""

# puts "Invalid Pawn movements"
# puts "--------------------"
# p black_pawn.can_move?(4, 7) == "no"
# p black_pawn.can_move?(6, 5) == "no"

# ************************** WHITE PAWN ************************

# puts "Invalid Pawn movements"
# puts "--------------------"
# p white_pawn.can_move?(5, 4) == "yes"
# p white_pawn.can_move?(5, 3) == "yes"


# puts ""

# puts "Invalid Pawn movements"
# puts "--------------------"
# p white_pawn.can_move?(4, 7) == "no"
# p white_pawn.can_move?(6, 5) == "no"
