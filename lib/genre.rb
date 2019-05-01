class Genre
attr_reader:name

@@all = []

def initialize(name)
@name = name
@@all << self
end

def self.all
@@all
end


def songs
Song.all.select do |my_songs|
my_songs.genre == self
end
end

def artists
songs.map {|song| song.artist}
end



end
