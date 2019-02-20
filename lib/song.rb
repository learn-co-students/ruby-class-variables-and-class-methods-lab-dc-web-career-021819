class Song 
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
      
            @@artists << artist

      
            @@genres << genre
        
    end
    @@count = 0
    @@artists = []
    @@genres = []
    attr_accessor :name, :artist, :genre
   
    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        ret = {}
        @@genres.each do |e|
            if ret.has_key?(e)
                ret[e]+=1
            else
                ret[e] = 1
            end
        end
        ret
    end
    def self.artist_count
        ret = {}
        @@artists.each do |e|
            if ret.has_key?(e)
                ret[e]+=1
            else
                ret[e] = 1
            end
        end
        ret
    end

end