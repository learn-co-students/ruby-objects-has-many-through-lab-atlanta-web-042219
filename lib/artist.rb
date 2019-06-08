class Artist 
    attr_reader :name

    @@all = []

    def self.all
        @@all
    end 

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end 

    def new_song(song_name)
        song_name = Song.new("song_name")
        song_name.artist == self
    end 

    def songs
        Song.all.select { |single| single.artist == self.name }
    end 

    def genres
        songs.collect { |single| single.genre }
    end 


end 