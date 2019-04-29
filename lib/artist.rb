require 'pry'
require_relative "./genre.rb"
require_relative "./song.rb"

class Artist
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        Song.all.collect do |song|
            # binding.pry
            song.genre 
        end
    end
end