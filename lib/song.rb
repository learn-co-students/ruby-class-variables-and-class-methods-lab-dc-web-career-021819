require 'pry'
class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

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

  def self.count_helper(arr, result = {})
    arr.each{|x| result[x] ? result[x] += 1 : result[x] = 1}
    result
  end

  def self.genre_count
    count_helper(@@genres)
  end

  def self.artist_count
    count_helper(@@artists)
  end

end
