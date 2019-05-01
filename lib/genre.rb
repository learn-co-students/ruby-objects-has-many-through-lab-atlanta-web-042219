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
  Song.all.select do |song_object|
    song_object.genre == self
    #this looks through the @@all array from the Songs class
    #then, it looks to see if each_item_in_that_array's genre is equal to the genre of self
    # if it is, it returns an array with just those songs
end
end

def artists
  array = []
  self.songs.select do |song_object|
    array << song_object.artist
    #make an empty array
    #genre's self.songs(method above, that returns an array)
    #iterate through each item in that array
    #shovel the item.artist into a new new_array
    #return new array
end
array
end

end
