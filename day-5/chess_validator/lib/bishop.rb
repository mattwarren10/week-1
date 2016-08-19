# lib/rook.rb
require_relative("piece.rb")

class Bishop < Piece
  def initialize (x, y, color)
    super(x, y, color)
  end

  def can_move?(final_x, final_y)
  	if (final_x - @x).abs == 1 && (final_y - @y).abs == 1 
  		"yes"
  	elsif (final_x - @x).abs == 2 && (final_y - @y).abs == 2
      "yes"
    elsif (final_x - @x).abs == 3 && (final_y - @y).abs == 3
      "yes"
    elsif (final_x - @x).abs == 4 && (final_y - @y).abs == 4
      "yes"
    elsif (final_x - @x).abs == 5 && (final_y - @y).abs == 5
      "yes"
    elsif (final_x - @x).abs == 6 && (final_y - @y).abs == 6
      "yes"
    elsif (final_x - @x).abs == 7 && (final_y - @y).abs == 7
      "yes"
    else
  		"no"
  	end
  end
end