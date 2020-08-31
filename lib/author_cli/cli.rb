require_relative "./version.rb"
require 'pry'
class AuthorCli::Cli 
   
    def call
        puts "Hello, and welcome to the New York Times author Cli! Please enter an authors name and receive their book information."
        puts "To exit the program, enter Exit."
        menu
     end
 

   def menu
    input = gets.strip.downcase.split(" ") 
    if AuthorCli::API.get_data(input[0], input[1]) != nil
       book_list
       menu
    elsif input == "exit"
        goodbye
    else 
      invalid_entry
      menu
    end
  end

   def book_list
     AuthorCli::Book.all.each_with_index do |book, index|
        puts "#{index+1}.#{book.title}"
      end
     puts "Which book would you like a synopsis for?"
     input = gets.strip.downcase
     summary(AuthorCli::Book.all[input.to_i - 1].title)
   end

     def summary(title)
       AuthorCli::Book.find_by_name(title).summary
     end
   

    def invalid_entry
        puts "That's invalid! Please try again."
    end

   
    def goodbye
        puts "See you later!"
    end
 
#    #binding.pry
end