require 'pry'
class AuthorCli::Book
    attr_accessor :title, :author, :summary
    @@all = []
    
    def initialize(attr_hash)
        attr_hash.each do |x, y|
            self.send("#{x}=", y) if self.respond_to?("#{x}=")
            #@author = []
        end
        save
    end

    def save
       @@all << self
   end

    def self.all
        @@all
   end

    # def self.find_by_name(title)
    #    self.all.select do |title|
    #       Book.name.downcase == name
    #    end
    # end
    
    def self.find_by_name(book_title)
      all.find{|book| book.title == book_title }
    end

    def self.title_exists?(title)
      all.find{|book| book.title == title }
    end
   
end