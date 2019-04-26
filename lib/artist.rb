require "pry"

class Artist
	attr_accessor :name
	@@all = []

	def self.all
		@@all
	end

	def initialize(artist_name)
		@name = artist_name
		@@all << self
	end

	def new_song(song_name, genre_obj)
		Song.new(song_name, self, genre_obj)
	end

	def songs
		Song.all.select {|song| song.artist == self}
	end

	def genres
		genre_arr = []
		songs.each {|song| genre_arr << song.genre}
		genre_arr
	end
end
