require("imdb")
# DON'T make a class for the movies
movies = []
movies_array = IO.readlines("movies.txt")
# p movies_array
movies_array.each do |movie_title|
	# p movie_title
	the_search = Imdb::Search.new(movie_title)
	first_result = the_search.movies[0]
	# puts "Got a total of #{the_search.movies.length} results"
	# puts "First result:"
	movies.push(first_result)
	# puts first_result.title
	# puts first_result.rating
	# puts "-" * 30
end

movies.each do |m|
	puts m.title
	puts m.rating.round

end

9.downto(1) do |rating|
	print "#{rating}"
	movies.each do |m|
		print "|"
		if m.rating.round >= rating
			print '#'
		else
			print '_'
		end
	end
	puts "!"
end

# puts "  ___________"
# puts "10|_|_|_|_|_|"
# puts "9 |_|_|_|_|_|"
# puts "8 |_|_|_|_|_|"
# puts "7 |_|_|_|_|_|"
# puts "6 |_|_|_|_|_|"
# puts "5 |_|_|_|_|_|"
# puts "4 |_|_|_|_|_|"
# puts "3 |_|_|_|_|_|"
# puts "2 |_|_|_|_|_|"
# puts "1 |_|_|_|_|_|"




# the_search = Imdb::Search.new(movie_title)

# The .movies method returns the array that contains the results



# The Imdb::Movie class contains the movie info
#     Documentation -> http://www.rubydoc.info/github/ariejan/imdb/master/Imdb/Movie



