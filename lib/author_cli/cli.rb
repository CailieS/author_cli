 require 'pry'
 
 class AuthorCli::Cli 
   
    def call
        puts "Hello, and welcome to the New York Times author Cli! Please enter an authors name and receive their book information."
        puts "To exit the program, enter exit."
        AuthorCli::API.get_data.new.import
       menu
     end
   end

   def menu
    input = gets.strip.downcase
    if input == "author"
        book_list
        #menu
    elsif input == "exit"
        puts "See you later!"
    else 
       puts "That's invalid! Please try again."
       menu
    
    end

    def book_list
      
        book.all.each_with_index do |title, index|
        puts "{index + 1}. #{title.name}"
        end
        puts ""
        puts ""
        puts "Whch books would you like a synopsis for?"
        input = gets.strip.downcase
     author_selection(input)
    end

    def book_selection(title)
       puts "#{titles}"
    end

   def goodbye
       puts "Goodbye!"
    end
       
    
end