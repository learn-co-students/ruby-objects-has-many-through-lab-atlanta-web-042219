class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        songs.map(&:artist)

        # artist = Artist.all.collect do |song|
        #     song.genre == self
        # end
        # artist.map {|x| x.artist}
    end

end