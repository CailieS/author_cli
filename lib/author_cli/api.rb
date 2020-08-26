require 'pry'
require_relative "../environment.rb"
require_relative "./version.rb"

require 'json'
#require uri
require 'httparty'
#require open-uri 

class AuthorCli::API
#  attr_accessor :first, :last, :key 
#     def initialize(first, last, key)
#         @first = first
#         @last = last
#         @key = "QPGP53kmsToQQAzsQfnhDKqqZFGbgg50"
#         @URL = "https://api.nytimes.com/svc/books/v3/reviews.json?author=#{@first}+#{@last}&api-key=#{key}"
#     end

    def self.get_data
        @first = "Michelle"
        @last = "Obama"
        @key = "QPGP53kmsToQQAzsQfnhDKqqZFGbgg50"
        @URL = "https://api.nytimes.com/svc/books/v3/reviews.json?author=#{@first}+#{@last}&api-key=#{@key}"
       binding.pry
       response = HTTParty.get(@URL)
       parsed = response.parsed_response #may be unnecessary
       parsed_data = JSON.parse(response.body)
       
       
    end
    binding.pry
end

#def self.get_data
   # response = RestClient.get("https://api.nytimes.com/svc/books/v3/names.json")
    
    #author_array = JSON.parse(response.body)["results"]
    #author_array.each do |author|
     #   Author.new(author)
      #  binding.pry
    #end
#end