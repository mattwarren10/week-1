# lib/rook.rb
require_relative("piece.rb")

class Rook < Piece
  def initialize (x, y, color)
    super(x, y, color)
  end

  def can_move?(final_x, final_y)
    if final_x == @x || final_y == @y
      "yes"
    else
      "no"
    end
  end
end