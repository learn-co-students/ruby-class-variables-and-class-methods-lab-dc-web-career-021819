require 'pry'
class Song
  attr_accessor :name, :artist, :genre

  # class variables
  @@count = 0
  @@genres = []
  @@artists = []

  # initialize
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  # class methods
  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.count_collection(array)
    array.each_with_object(Hash.new(0)) {|genre, count_hash| count_hash[genre] += 1}
  end

  def self.genre_count
    count_collection(@@genres)
  end

  def self.artist_count
    count_collection(@@artists)
  end
end
