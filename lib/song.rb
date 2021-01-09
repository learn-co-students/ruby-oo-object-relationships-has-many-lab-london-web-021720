class Song      
attr_accessor :name, :artist, :genre
    @@all = []
       

      def initialize(name,artist1=nil)
            @name = name 
            @artist= artist1 
            @genre = genre 
            @@all << self
        end 


    def self.all
        @@all
    end 


    def artist_name 
        if @artist
        @artist.name
        else 
            return nil
        end
    
    end


end 