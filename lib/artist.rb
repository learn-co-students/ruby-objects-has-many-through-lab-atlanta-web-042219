# class Artist
#     attr_accessor :name

#     @@all = []

#     def initialize(name)
#         @name = name
#         @@all << self
#     end

#     def self.all
#         @@all
#     end

#     def new_song(name, genre)
#         Song.new(name, self, genre)
#     end

#     # def new_song(name, genre)
#     #     new_song = Song.new(name, self, genre)
#     #     new_song
#     # end

#     def songs 
#         song_list = []
#         Song.all.select do |song|
#             if self == song.artist 
#                 song_list << song 
#             end
#         end
#         song_list
#     end

#     def genres 
#         self.songs.collect {|song| song.genre} 
#     end

# end


require 'pry'
class Artist
    @@all = []

    attr_accessor :name

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
        Song.all.select { |song| song.artist == self }
    end

    def genres
        self.songs.map { |song| song.genre }
    end

end