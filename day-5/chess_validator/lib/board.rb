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
		piece = @pieces[y][x]
		if (new_x >= 0) && (new_x <= 7) && (new_y >= 0) && (new_y <= 7)
			puts "Piece is on the board."
			if @pieces[new_y][new_x].nil?
				puts "The destination is nil."
				puts @pieces[y][x].name
				if @pieces[y][x].can_move?(new_x, new_y) == "yes"
					puts "Good move."
				else
					puts "Nope. Can't do that."
				end
			end
		else
			puts false
		end
	end

	def add_piece(x, y, piece)
		@pieces[y][x] = piece
	end
end