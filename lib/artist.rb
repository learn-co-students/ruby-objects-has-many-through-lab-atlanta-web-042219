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
    artist_song_array = []
    Song.all.each do |song_obj|
      if song_obj.artist == self
        artist_song_array << song_obj
      end
    end
        return artist_song_array
    end

  def genres
    genre_array = []
    self.songs.each do |song_obj|
    genre_array << song_obj.genre
    end
    return genre_array
  end

end
