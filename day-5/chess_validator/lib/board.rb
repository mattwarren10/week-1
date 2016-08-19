class Board
	attr_accessor :pieces
	def initialize
		@pieces = [
			[], 
			[],
			[],
			[],
			[],
			[],
			[],
			[]
		]
	end
	def can_move?(x, y, new_x, new_y)

	end

	def add_piece(x, y, piece)
		@pieces[y][x] = piece
	end
end