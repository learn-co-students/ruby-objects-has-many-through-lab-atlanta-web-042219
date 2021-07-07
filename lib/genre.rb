require 'pry'

class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
    # binding.pry
  end

  def songs
    # binding.pry
    Song.all.select do |genre_songs|
      genre_songs.genre == self
    end
  end

  def artists
    songs.collect do |song_object|
      song_object.artist
    end
  end


end
