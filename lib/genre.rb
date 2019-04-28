class Genre
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def songs
        Song.all.select {|s| s.genre == self}
    end

    def artists
        songs.collect {|s| s.artist }
    end
end