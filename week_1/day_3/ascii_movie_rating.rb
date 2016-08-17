# DON'T make a class for the movies

require("imdb")
require("awesome_print")


movies = []
graph1 = ""



movies_array = IO.read("movies.txt").split("\n")

movies_array.each do |title|
	the_search = Imdb::Search.new(title)
	first_result = the_search.movies[0]
	hash = {title: first_result.title, rating: first_result.rating}
	movies.push(hash)
end




10.downto(1) do |rating|
	
	movies.each do |movie|
		if movie[:rating] >= rating 
			graph1  += "|#|"
		else
			graph1 += "| |"
		end
	end
	graph1 += "\n"
end

puts graph1

puts "---------------------"

puts "|1||2||3||4||5||6||7|"

puts ""

movies.each do |movie_list|
	puts movie_list[:title]
end

