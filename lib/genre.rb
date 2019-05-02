class Genre
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|music| music.genre == self}
  end

  def artists
    Song.all.map {|music| music.artist}
  end
end
