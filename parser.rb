class Parser
	attr_accessor :json, :movie

def get_movie(movie)
	json = RestClient.get "http://www.omdbapi.com/?i=&t=movie"
	movie = JSON.load(json)
end

end