class Blog
	def initialize
		@posts = []
	end

	def add_post(p)
		@posts.push(p)
	end

	def publish_front_page
		@posts.each do |post|
			post.is_sponsered?
			p post.title
			p "*" * 30
			p post.text
			p "-" * 30
		end
	end
end

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

blog = Blog.new
post1 = Post.new("First title", "2016-08-01", "This is the first blog post.", false)
post2 = Post.new("Second title", "2016-08-03", "Another blog post.", true)
post3 = Post.new("Third title", "2016-08-05", "The third blog post has arrived!", false)


blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)

blog.publish_front_page