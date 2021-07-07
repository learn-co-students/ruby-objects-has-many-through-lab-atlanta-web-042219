class Genre
    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select { |artists_songs| 
            artists_songs.genre == self}
    end

    def artists
        songs.collect { |song| song.artist}
    end
end