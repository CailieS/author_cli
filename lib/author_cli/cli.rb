 class AuthorCli::Cli 
   
    def greeting
       
        puts "Hello, and welcome to the Goodreads author Cli! Please enter an authors name and receive their book reviews."
        puts "To exit the program, enter exit."
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
    menu
    end

    def reviews_list
        reviews = ['']
    end
        #get_reviews(author)
        #list_review
    
end