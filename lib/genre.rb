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
		songs.map {|song| song.artist}
	end
end
