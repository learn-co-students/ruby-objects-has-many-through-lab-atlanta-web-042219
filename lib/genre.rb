class Genre
  attr_accessor :name, :songs
@@all = []

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end

def self.all
  @@all
end

def songs
  Song.all.select do |song|
    song.genre == self
end
end

def artists
  new_array= []
  self.songs.select do |song_obj|
    new_array << song_obj.artist
end
new_array
end

end
