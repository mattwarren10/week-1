# lib/rook.rb

class Piece
attr_accessor :name
  def initialize(x, y, color, name)
    @x = x
    @y = y
    @color = color
    @name = name
  end
  def can_move?(final_x, final_y)
  end
end

