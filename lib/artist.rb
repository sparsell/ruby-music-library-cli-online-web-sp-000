class Artist
  extend Concerns::Findable

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def add_song(song)
    @@all << self
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    Artist.new(name)
  end

  def songs #returns the artist's 'songs' collection (artist has many songs)
    Song.all.select {|song| song.artist == self}

  end

  def genres

  end
end
