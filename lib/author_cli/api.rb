require_relative "../lib/environment.rb"


require json
#require uri
#require net/http
#require open-uri 

class Authorcli::Api
 attr_accessor :title
    def initialize(title)
        @title = title
        @key = [QPGP53kmsToQQAzsQfnhDKqqZFGbgg50]
        @URL = [https://api.nytimes.com/svc/books/v3/reviews.json?title=#{title}]
    end

    def fetch_data
        url = "https://api.nytimes.com/svc/books/v3/reviews.json?title=#{title}"
      
        response = HTTParty.get(url)
        response.parsed_response #may be unnecessary
       #parsed_data = JSON.parse(response.body)
        #review = parsed_data["title"]
        #turn into objects, fill out information related to the title/review information
    end
end