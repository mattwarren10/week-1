# app.rb
require_relative("lib/blog.rb")
require_relative("lib/post.rb")

post1 = Post.new("First title", "2016-08-01", "This is the first blog post.", false)
post2 = Post.new("Second title", "2016-08-03", "Another blog post.", true)
post3 = Post.new("Third title", "2016-08-05", "The third blog post has arrived!", false)
post4 = Post.new("Fourth title", "2016-08-07", "Fourth blog post text", false)
post5 = Post.new("Fifth title", "2016-08-09", "Fifth blog post text", false)
post6 = Post.new("Sixth title", "2016-08-11", "Sixth blog post text", false)
post7 = Post.new("Seventh title", "2016-08-13", "Seventh blog post text", false)
post8 = Post.new("Eighth title", "2016-08-15", "Eighth blog post text", false)


posts_array = [ post1, post2, post3, post4, post5, post6, post7, post8 ]
blog = Blog.new(posts_array)

input = ""
while (input != "exit")
blog.use_each
input = gets.chomp
case input 
	when "next"	
		blog.next_page
	when "previous"
		blog.previous_page
end
end


