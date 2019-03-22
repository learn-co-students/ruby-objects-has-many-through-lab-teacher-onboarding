class Artist
  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def new_song(title,genre)
    song = Song.new(title, self, genre)

    song
  end
  
  def songs 
    Song.all.select { |song| song.artist == self }
  end
  
  def genres 
    my_songs = self.songs 
    my_genres = []
    my_songs.each { |song| my_genres << song.genre } 
    my_genres
  end
end