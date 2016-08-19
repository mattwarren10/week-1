# lib/king.rb
require_relative("piece.rb")

class King < Piece
  def initialize (x, y, color, name)
    super(x, y, color, name)
  end

  def can_move?(final_x, final_y)
  	if (final_x - @x).abs == 1 && (final_y - @y).abs == 1
  		"yes"
  	elsif (final_x - @x).abs == 1 && (final_y - @y).abs == 0
  		"yes"
  	elsif (final_x - @x).abs == 0 && (final_y - @y).abs == 1
  		"yes"
  	elsif (final_x - @x).abs == 2 || (final_y - @y).abs == 2
  		"no"
  	elsif (final_x - @x).abs == 2 || (final_y - @y).abs == 1
  		"no"
  	elsif (final_x - @x).abs == 1 || (final_y - @y).abs == 2
  		"no"
  	end
  end

end