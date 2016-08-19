# lib/rook.rb

class Piece
  def initialize(x, y, color)
    @x = x
    @y = y
    @color = color
  end

  def can_move?(final_x, final_y)
    # if (final_x - @x) == 0 || (final_y - @y) == 0

    if final_x == @x || final_y == @y
      "yes"
    else
      "no"
    end
  end
end
