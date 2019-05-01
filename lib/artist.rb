class Artist
  attr_accessor :name

  @@all = []

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

def songs
  Song.all.select do |x|
    x.artist == self
end
end

def genres
  new_array= []
  self.songs.select do |song_obj|
    new_array << song_obj.genre
end
new_array
end

end
