# lib/blog.rb
class Blog
	def initialize(array)
		@posts = array
		@first_index = 0
		@last_index = 2
	end

	def next_page
		@first_index += 3
		@last_index += 3
	end

	def previous_page
		@first_index -= 3
		@last_index -= 3
	end

	def use_each
		@posts[@first_index..@last_index].each do |post|
			p post.title
			p "*" * 20
			p post.text
			p "-" * 20
		end
	end
end