class Song
@@all = []
attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def genre
    Genre.all.each do |genre|
      if genre.song == self
        @artist = genre.artists
      end
    end
  end

  def artist
  end


end
