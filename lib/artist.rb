class Artist
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def self.all
    @@all
  end

  def songs
    Song.all.filter { |e| e.artist == self }
  end

  def genres
    songs.map { |e| e.genre }
  end
end
