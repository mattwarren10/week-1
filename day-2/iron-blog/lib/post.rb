# lib/post.rb
class Post
	attr_accessor :title, :date, :text, :sponsered
	def initialize (title, date, text, sponsered)
		@title = title
		@date = date
		@text = text
		@sponsered = sponsered
	end

	def is_sponsered?		
		if @sponsered == true
			@title = "***** #{@title} *****"
		end
	end
end
