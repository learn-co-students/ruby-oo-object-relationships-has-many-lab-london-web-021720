class Post
    @@all = []

    attr_accessor :title, :author

    def initialize(name)
        @title = name
        @@all << self
    end

    def author
        @author
    end

    def author_name
        if @author
            @author.name
        else
            nil
        end
    end

    def self.all
        @@all
    end

end