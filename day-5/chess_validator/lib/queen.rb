# lib/king.rb
require_relative("piece.rb")

class Queen < Piece
  def initialize (x, y, color, name)
    super(x, y, color, name)
  end

  def can_move?(final_x, final_y)
  	if final_x == @x || final_y == @y
      "yes"
    elsif ((final_x - @x).abs - (final_y - @y).abs).abs == 0
      "yes"  
    else 
      "no"
  	end
  end

end