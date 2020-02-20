class Author
    @@all = []

    attr_accessor :name, :posts

    def initialize(name)
        @name = name
        @@all << self
    end

    def name
        @name
    end

    def posts
        Post.all.select { |post| post.author == self }
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
    end

    def self.all
        @@all
    end

    def self.post_count
        x = self.all.map { |author| author.posts.size }
        x.sum
    end

end