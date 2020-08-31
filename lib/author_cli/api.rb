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
       parsed_data["results"].each do |book|
         #binding.pry
       hash = {}
       hash["title"] = book["book_title"]
       hash["author"] = book["book_author"]
       hash["summary"] = book["summary"]
       new_book = AuthorCli::Book.new(hash) if AuthorCli::Book.title_exists?(book["book_title"]).nil?
      end
    end
end

