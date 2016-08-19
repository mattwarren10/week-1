# lib/rook.rb
require_relative("piece.rb")

class Knight < Piece
  def initialize (x, y, color, name)
    super(x, y, color, name)
  end

  def can_move?(final_x, final_y)
  	if (final_x - @x).abs == 2 && (final_y - @y).abs == 1
  		"yes"
  	elsif (final_x - @x).abs == 1 && (final_y - @y).abs == 2
  		"yes"
  	else
  		"no"
  	end
  end
end