require 'pry'

class Artist

  attr_accessor :name, :genre, :songs

  @@artists = []

  def initialize(name)
    @name = name
    @@artists << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def self.all
    @@artists
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def genres
    Song.all.map { |artists| artists.genre }
  end

end
