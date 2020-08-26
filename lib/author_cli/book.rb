require 'pry'
class Book
    attr_accessor :title
    def initialize(attr_hash)
    attr_hash.each do |x, y|
    self.send("#{x}=", y) if self.respond_to?("#{x}=")
    title = []
    end
    save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(title)
        self.all.select do |title|
            title.name == name
        end
    end

    def add_title(title)
        @add_title << title
    end
   
end