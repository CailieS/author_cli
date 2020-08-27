#require_relative "./version.rb"
 require 'pry'
 class AuthorCli::Cli 
   
    def call
        puts "Hello, and welcome to the New York Times author Cli! Please enter an authors name and receive their book information."
        puts "To exit the program, enter exit."
        menu
     end
 

   def menu
    input = gets.strip.downcase
    #binding.pry
    if AuthorCli::API.get_data != nil
    #binding.pry
       book_list
       menu
    elsif input == "exit"
       puts "See you later!"
    else 
      puts "That's invalid! Please try again."
      menu
    end
  end

   def book_list
        Book.all.each_with_index do |book, index|
        puts "#{index+1}.#{book.name}"
    end
        puts " "
        puts " "
        puts "Which books would you like a synopsis for?"
        input = gets.strip.downcase
        book_selection(input)
  end

    def book_selection(title)
       puts "#{titles}"
    end

   def goodbye
     puts "Goodbye!"
   end
       

   #binding.pry
end