class Song

    attr_reader :artist, :genre

    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        genre.song = self
        artist.song = self
        @@all << self
    end

    def self.all
        @@all
    end

end