class Song

    @@count = 0
    @@artists = []
    @@genres = []
    
    
    attr_accessor :name , :artist, :genre 

    def initialize(name, artist, genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def count=(count)
        @@count=count
    end

    def self.count
        @@count
    end

    def artists=(artists)
        @@artists=artists
    end

    def self.artists
        @@artists
    end

    def genres=(genres)
        @@genres=genres
    end

    def self.genres
        @@genres
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end