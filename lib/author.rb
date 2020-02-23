class Author
    attr_accessor :name
    @@all = []
 
   def initialize(name)
        @name = name 
        @@all << self 
       
     end 
 
     def add_post(post)
       post.author = self
       
        
     end 
 
     def posts
      
        Post.all.select {|post| post.author == self}
         
 
     end
 
     def add_post_by_title(post_name)
        post_name = Post.new(post_name)
        post_name.author = self 
 
     end
   
     def self.post_count
        
       array = Post.all
       array.length 

 
     end 
     
     
 
 
 end 