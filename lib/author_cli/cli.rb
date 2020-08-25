 require 'pry'
 class AuthorCli::Cli 
   
    def call
        puts "Hello, and welcome to the Goodreads author Cli! Please enter an authors name and receive their book reviews."
        puts "To exit the program, enter exit."
        API.get_data
        menu
     end
   end

   def menu
    input = gets.strip.downcase
    if input == "list"
        puts "list"
    elsif input == "exit"
        puts "exit"
    else 
    puts "That's invalid! Please try again."
    
    end

    def authors_list
        author.all.each_with_index do |author, index|
            puts "{index + 1}. #{author.name}"
        end
        puts ""
        puts ""
        puts "Whch author would you like reviews for?"
        input = gets.strip.downcase
        author_selection(input)
    end

    def author_selection(author)
        puts "#{authors}"
    end

    def goodbye
        puts "Goodbye!"
    end
       
    
end