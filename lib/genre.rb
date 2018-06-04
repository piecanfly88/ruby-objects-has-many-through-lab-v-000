class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def song_new(name, artist)
    Song.new(name, artist, self)
  end

end
