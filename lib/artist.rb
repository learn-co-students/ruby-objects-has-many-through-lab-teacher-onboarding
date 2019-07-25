class Artist
  attr_accessor :songs
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    @songs << new_song
    new_song
  end

  def songs
    Song.all.select{ |song| song.artist == self }
  end

  def genres
    Song.all.map do |song|
      song.genre
    end
  end
end
