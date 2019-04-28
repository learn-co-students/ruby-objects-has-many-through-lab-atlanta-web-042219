class Genre
@@all = []
attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def artists
    Artist.all.select do |song|
      Song.genre == self
    end
  end


  def songs
    Song.select.each do |song|
      song.genre == self
    end
  end

  def self.all
    @@all
  end

end
