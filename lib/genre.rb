class Genre
  attr_accessor :name


  def initialize(name)
    @name = name
  end

  def new_song(name, artist)
    Song.new(name, self, artist)
  end
end