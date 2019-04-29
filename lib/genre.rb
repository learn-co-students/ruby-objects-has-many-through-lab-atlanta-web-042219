require 'pry'
require_relative "./artist.rb"
require_relative "./song.rb"

class Genre
    attr_accessor :name, :artists

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select do |song|
        song.genre == self
        end
    end

    def artists
        Artist.all.each do |artist|
            artist.name
        end
    end

end