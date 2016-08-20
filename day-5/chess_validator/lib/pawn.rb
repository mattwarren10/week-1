# lib/rook.rb
require_relative("piece.rb")

class Pawn < Piece
  def initialize (x, y, color, name)
    super(x, y, color, name)
  end

  
  def can_move?(final_x, final_y)
  	if (final_x - @x == 0 && final_y - @y == -1) || (final_x - @x == 0 && final_y - @y == 1)
  		"yes"
  	elsif (final_x - @x == 0 && final_y - @y == -2) || (final_x - @x == 0 && final_y - @y == 2)
  		"yes"
    else
      "no"
  	end
  end
end