# class Genre
#     attr_accessor :name
    
#     @@all = []

#     def initialize(name)
#         @name = name
#         @@all << self
#     end
    
#     def self.all
#         @@all
#     end

#     def songs 
#         song_list = []
#         Song.all.select do |song|
#             if self == song.genre 
#                 song_list << song 
#             end
#         end
#         song_list
#     end

#     def artists 
#         self.songs.collect {|song| song.artist} 
#     end
# end



class Genre
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, artist)
        Song.new(name, artist, self)

    end

    def songs
        Song.all.select { |song| song.genre == self }
    end

    def artists
        self.songs.map { |song| song.artist }
    end

end