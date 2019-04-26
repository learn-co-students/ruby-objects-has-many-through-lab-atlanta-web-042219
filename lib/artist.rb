require 'pry'
class Artist
  @@all = []
  attr_accessor :songs
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def  new_song(name, genre)
    new_song = Song.new(name, self, genre)
    self.songs << new_song
  end


end
