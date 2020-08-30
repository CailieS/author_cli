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
       book_list(AuthorCli::API.get_data(input[0], input[1]))
       menu
    elsif input == "exit"
        goodbye
    else 
      invalid_entry
      menu
    end
  end

   def book_list(books)
      books.each_with_index do |book, index|
        puts "#{index+1}.#{book.title}"
      end
        input = gets.strip.capitalize
      if input == "Exit"
        goodbye
      else
        puts "Which book would you like a synopsis for?"
        input = gets.strip
        #summary(input)
      end
   end

#     def summary(title)
#         


   #title = Book.find_by_name(title)
#         binding.pry
#         #title.each do |t|
      
#    end





    # def book_selection(input)
    #     if input.to_i.between?(1, Book.all.count)
    #         book = book_list.all[input.to_i - 1]
    #      if book == nil
    #         puts "Oh no! It looks like the book you chose is unavailable. Please try again!"
    #         book_list
    #      end
    #     end
    # end

    # def summary
    #     input = hash["summary"] = book["summary"]
    # end

    def invalid_entry
        puts "That's invalid! Please try again."
    end

   def goodbye
     puts "Goodbye!"
     exit
   end
       
   #def another_book
    #puts "Would you like to choose another book? Type 'Y' for more or 'N' to exit"
    #input = gets.strip
    #if input == "y".downcase
     #   menu
    #end
   #end
   #binding.pry
end