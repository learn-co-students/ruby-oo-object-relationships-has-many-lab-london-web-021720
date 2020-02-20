class Artist
    @@all = []

    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def name
        @name
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song)
        song = Song.new(song)
        song.artist = self
    end

    def songs
        Song.all.select { |song| song.artist == self }
    end

    def self.all
        @@all
    end

    def self.song_count
        x = self.all.map { |artist| artist.songs.size }
        x.sum
    end


end