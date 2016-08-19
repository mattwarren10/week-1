# lib/rook.rb
require_relative("piece.rb")

class Rook < Piece
  def initialize (x, y, color)
    super(x, y, color)
  end
end