class Song 
  @@all = []
  attr_reader :title
  attr_accessor :artist, :genre
  def initialize(name,artist,genre)
    @title = title
    @artist = artist
    @genre = genre
    @@all << self
  end
  
  def self.all 
    @@all 
  end

end