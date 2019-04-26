require "pry"

class Genre
	attr_accessor :name
	@@all = []

	def self.all
		@@all
	end

	def initialize(genre_name)
		@name = genre_name
		@@all << self
	end

	def songs
		Song.all.select {|song| song.genre == self}
	end

	def artists
		artist_arr = []
		songs.each {|song| artist_arr << song.artist}
		artist_arr
	end
end
