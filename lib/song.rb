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
    @@genres << genre #if !@@genres.include?(genre)
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
  a = {}
  @@genres.each do |genre|
    b = {"#{genre}", 1}
    a.update(b){|genre, v| v + 1 }
  end
a
end

def self.artist_count
  @@artists.uniq.length
end


end
