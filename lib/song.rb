require 'pry'

class Song

  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
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
      self.genres.each do |genre|
        if self.genre_count.genre < 1
          self.genre_count.genre = 1
        else
          self.genre_count.genre += 1
        end
      end
      @@genre_count
  end

  def self.artist_count
    self.artists.each do |artist|
      binding.pry
      if self.artist_count.artist < 1
        self.artist_count.artist = 1
      else
        self.artist_count.artist += 1
      end
    end
    @@artist_count
  end

end
