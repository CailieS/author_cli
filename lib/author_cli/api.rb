require 'pry'
require_relative "../environment.rb"
require_relative "./version.rb"

require 'json'
#require uri
require 'httparty'
#require open-uri 

class AuthorCli::API


    def self.get_data(first, last)
       @key = "QPGP53kmsToQQAzsQfnhDKqqZFGbgg50"
       @URL = "https://api.nytimes.com/svc/books/v3/reviews.json?author=#{first}+#{last}&api-key=#{@key}"
       response = HTTParty.get(@URL)
       parsed = response.parsed_response 
       parsed_data = JSON.parse(response.body)
       books = []
       parsed_data["results"].each do |book|
       hash = {}
       hash["title"] = book["book_title"]
       hash["author"] = book["book_author"]
       hash["summary"] = book["summary"]
       new_book = Book.new(hash)
       books << new_book
      end
      books
    end
end

