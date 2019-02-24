class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

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
    genre_hash = Hash.new
    @@genres.each do |genre_type|
      genre_hash[genre_type] ||= 0
      genre_hash[genre_type] += 1
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new
    @@artists.each do |some_artist|
      artist_hash[some_artist] ||= 0
      artist_hash[some_artist] += 1
    end
    artist_hash
  end




end
