#require_relative "./version.rb"
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
   binding.pry
      books.each_with_index do |book, index|
        #list all the books for the particular author that was just queried, rather than ALL the books
        puts "#{index+1}.#{book.title}"
      end
        input = gets.strip.capitalize
      if input == "Exit"
        goodbye
      else 
        puts "Which books would you like a synopsis for?"
      end
        book_selection(input)
    end

   #def author_selection(name)
    #puts "#{name}"
   #end

    def book_selection(title)
       puts "#{title}"
    end

    def invalid_entry
        puts "That's invalid! Please try again."
    end

   def goodbye
     puts "Goodbye!"
     exit
   end
       

   #binding.pry
end