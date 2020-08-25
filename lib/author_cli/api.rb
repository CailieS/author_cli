require 'pry'
require_relative "../lib/environment.rb"

require json
#require uri
require 'httparty'
#require open-uri 

class Authorcli::API
 attr_accessor :author 
    def initialize(author)
        @author = author
        @key = [QPGP53kmsToQQAzsQfnhDKqqZFGbgg50]
        @URL = [https://api.nytimes.com/svc/books/v3/reviews.json]
    end

    def self.get_data
       url = "https://api.nytimes.com/svc/books/v3/reviews.json"
       binding.pry
       response = HTTParty.get(url)
       response.parsed_response #may be unnecessary
       parsed_data = JSON.parse(response.body)
       review = parsed_data["author"]
    end
end

#def self.get_data
   # response = RestClient.get("https://api.nytimes.com/svc/books/v3/names.json")
    
    #author_array = JSON.parse(response.body)["results"]
    #author_array.each do |author|
     #   Author.new(author)
      #  binding.pry
    #end
end