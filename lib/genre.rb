class Genre
@@all = []
attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end

  def artists
    Artist.all.each do |song|
      if song.genre == self
        @artists << song
      end
    end
  end

  def songs
    Song.all.each do |song|
      if song.genre == self
        @songs << song
      end
    end
  end

  def self.all
    @@all
  end

end
