class Genre 
  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def songs 
    Song.all.select { |song| song.genre == self }
  end
  
  def artists 
    my_songs = self.songs
    my_artists = []
    my_songs.each { |song| my_artists << song.artist }
    my_artists
  end
end