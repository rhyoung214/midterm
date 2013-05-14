require_relative 'parser'


def get_director
		puts "Enter your favorite movie and we'll tell you the Director!"
		@input = gets.chomp

		if @input.include? "&"
			@input = @input.gsub("&","%26")
		end
		@input = @input.gsub(" ", "+")

		new_movie = Parser.new(@input)
		new_movie.get_movie

		if new_movie.key["Title"] == nil
			puts new_movie.key["Error"]
			puts "Please enter another movie!"
		else
			puts "The Director for #{new_movie.key["Title"]} is #{new_movie.key["Director"]}"
		end
end

get_director