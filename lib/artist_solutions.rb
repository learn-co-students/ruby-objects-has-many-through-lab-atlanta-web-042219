class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song_obj|
      song_obj.artist == self
    end
  end

  def genres
    new_array= []
    self.songs.select do |song_obj|
      new_array << song_obj.genre
  end
  new_array
end

  def self.all
    @@all
  end

def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    new_song
  end

end
