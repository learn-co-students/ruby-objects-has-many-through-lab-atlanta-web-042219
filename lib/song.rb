
class Song
    attr_accessor :name, :artist, :genre

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        self.class.all << self
    end

end