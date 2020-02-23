class Artist 
   attr_accessor :name
   @@all = []

  def initialize(name)
        @name = name 
        @@all << self 
      
    end 

    def add_song(song)
      song.artist = self
      
       
    end 

    def songs
     
        Song.all.select {|song| song.artist == self}
        

    end

    def add_song_by_name(song_name)
        song_name = Song.new(song_name)
        song_name.artist = self 

    end
  
    def self.song_count
       
       array = Song.all
      array.length 

    end 
    
    


end 