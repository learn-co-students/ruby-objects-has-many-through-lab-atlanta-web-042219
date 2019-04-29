require 'pry'

class Artist

attr_accessor :name
 @@all =[]

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
   # binding.pry
   Song.all.select {|element| element.artist == self}
 end

 def genres
   # binding.pry
  # temp = Song.all.select {|element| element.artist == self }
  #   temp.collect {|element| element.genre}
   new_array =[]
   self.songs.each  do |element|
     new_array << element.genre
   end
   new_array
 end


end
