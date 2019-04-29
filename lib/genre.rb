class Genre

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def songs
  Song.all.select {|element| element.genre == self}
end

def artists
# new_array = []

# temp = Song.all.select {|element| element.genre == self }
#   temp.collect {|element| element.artist}

new_array =[]
self.songs.each  do |element|
  new_array << element.artist
end
new_array

end
end
