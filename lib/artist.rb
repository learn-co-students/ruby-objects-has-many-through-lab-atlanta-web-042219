require 'pry'
class Artist
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

def genres
  Song.all.each do |song|
    if song.artist == self
      song.genre
    end
  end
end

def songs
  Song.all.select do |song|
    song.artist == self
  end
end

end
