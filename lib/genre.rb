class Genre
    attr_accessor :name

    @@all = []

    def initialize (name)
         @name = name

         @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|s| s.genre == self}
    end

    def new_song (name, genre)
        Song.new(name, genre, self)
    end

    def artists
        songs.map{|s| s.artist}.uniq
    end
end