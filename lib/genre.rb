require 'pry'

class Genre

  @@genres = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@genres << self
  end

  def songs
    Song.all.select { |genre| genre.artist }
  end

  def self.all
    @@genres
  end

  def artists
    Song.all.map { |genres| genres.artist }
  end

end
