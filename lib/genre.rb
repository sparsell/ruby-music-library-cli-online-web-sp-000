class Genre
  extend Concerns::Findable

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def save
    @@all << self
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    Genre.new(name)
    @name = name
    @@all << self
    self
  end

#collects artists through its songs instead of maintaining its own @artists instance
#variable (genre has many artists through songs)
    def artists

    end
end
