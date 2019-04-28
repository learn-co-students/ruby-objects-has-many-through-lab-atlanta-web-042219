require 'pry'
class Artist
    attr_reader :song, :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def new_song(name, genre)
        # binding.pry
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        songs.collect do |s|
            s.genre
        end
    end

end