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
  genre_song_array = []
    Song.all.each do |song_obj|
      if song_obj.genre == self
        genre_song_array << song_obj
      end
    end
      return genre_song_array
  end

  def artists
  artist_array = []
    Song.all.each do |song_obj|
      if song_obj.genre == self
       artist_array << song_obj.artist
      end
    end
    return artist_array
  end
end
