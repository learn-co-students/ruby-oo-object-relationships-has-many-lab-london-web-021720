class Post     
    attr_accessor :title, :author
        @@all = []
           
    
          def initialize(name,artist1=nil)
                @title = name 
                @author = artist1 
                @@all << self
            end 
    
    
        def self.all
            @@all
        end 
    
    
        def author_name 
            if @author
            author.name
            else 
                return nil
            end
        
        end
    
    
    end 