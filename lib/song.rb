require "pry"

class Song
	attr_accessor :name, :artist, :genre
	@@all = []

	def self.all
		@@all
	end

	def initialize(song_name, artist_obj, genre_obj)
		@name = song_name
		@artist = artist_obj
		@genre = genre_obj
		@@all << self
	end
end
