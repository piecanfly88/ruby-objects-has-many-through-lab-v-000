class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def song_new(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def genres
    songs.collect {|song| song.genre}
  end
end
