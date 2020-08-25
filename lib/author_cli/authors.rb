class Authors
    attr_accessor

    def initialize(attr_hash)
    attr_hash.each do |x, y|
    self.send("#{k}=", y) if self.respond_to?("#{k}=")
    end
    save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.select do |author|
            author.name == name
        end
    end
end