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
	puts "|"
end

print " "
(1).upto(movies.length).each do |m|
	print "|#{m}"
end

puts "|"

index = 1
movies.each do |m|
	puts "#{index}. #{m.title} (#{m.rating.round})"
	index += 1
end


# the_search = Imdb::Search.new(movie_title)

# The .movies method returns the array that contains the results



# The Imdb::Movie class contains the movie info
#     Documentation -> http://www.rubydoc.info/github/ariejan/imdb/master/Imdb/Movie



