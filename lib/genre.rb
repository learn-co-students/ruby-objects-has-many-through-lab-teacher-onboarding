class Genre
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.filter { |e| e.genre = self }
  end

  def artists
    songs.map { |e| e.artist }
  end
end
