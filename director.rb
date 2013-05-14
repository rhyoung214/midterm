require 'json'
require 'rest-client'
require_relative 'parser'


class Director

	Parser.new


		puts "Enter your favorite movie and we'll tell you the Director!"
		input = gets.chomp

		if input.include? "&"
			input= input.gsub("&","%26")
		end
		input = input.gsub(" ", "+")

		get_movie(input)

		if movie["Title"] == nil
			puts "This movie doesn't exist!"
			puts "Please enter another movie!"
		else
			puts "The Director for #{movie["Title"]} is #{movie["Director"]}"
		end
end

Director.new