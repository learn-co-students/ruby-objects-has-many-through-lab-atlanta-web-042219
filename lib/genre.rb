class Genre
    attr_reader :name 

    @@all = []

    def self.all
        @@all
    end 

    def initialize(name)
        @name = name
        @@all << self 
    end 

    def songs
        Song.all.select { |single| single.genre == self.name }
    end 

    def artists
        songs.collect {|single| single.artist}
    end 

end 