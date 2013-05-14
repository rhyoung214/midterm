require 'json'
require 'rest-client'

class Parser
  attr_accessor :title, :key

  def initialize(title)
    @title = title
    @key = key
  end

  def get_movie
  	json = RestClient.get "http://www.omdbapi.com/?i=&t=#{title}"
  	@key = JSON.load(json)
  end
end