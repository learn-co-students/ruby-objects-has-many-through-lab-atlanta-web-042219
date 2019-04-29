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
        song_list = []
        Song.all.select do |song|
            if self == song.genre 
                song_list << song 
            end
        end
        song_list
    end

    def artists 
        self.songs.collect {|song| song.artist} 
    end




end