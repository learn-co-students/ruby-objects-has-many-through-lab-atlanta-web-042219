require 'pry'
require_relative "./genre.rb"
require_relative "./artist.rb"

class Song
    attr_accessor :name, :artist, :genre
    @@all = []

    def self.all
        @@all
    end

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    def genre
        @genre
    end
    
    def artist
        @artist
    end
end