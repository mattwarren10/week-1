# lib/rook.rb
require_relative("piece.rb")

class Bishop < Piece
  def initialize (x, y, color)
    super(x, y, color)
  end

  def can_move?(final_x, final_y)
  	if ((final_x - @x).abs - (final_y - @y).abs).abs == 0
  		"yes"
    else
  		"no"
  	end
  end
end