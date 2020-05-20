class Song
  extend Concerns::Findable

  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(name, artist = nil)
    @name = name
    save
  end

  def artist
    @artist
  end

  def artist=(artist) #belongs to an artist
    @artist = artist
    artist.add_song(self)
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
    Song.new(name, artist = nil)
  end

  def self.find_by_name(name) #finds a song instance in @@all by the name property of the song
    all.detect{|song| song.name == name}
  end

#returns (does not recreate) an existing song with the provided name if one exists in @@all
#creates a song if an existing match is not found
  def self.find_or_create_by_name(name)
    if Song.all.include? == name
      return name
    elsif
    self.find_by_name(name)
  else
    self.create(name)
  end

  end

############################################# use with MusicImporter
  def self.new_from_filename(filename)

    Song.new(filename)
    #Findable methods here
  end

  def self.create_from_filename(filename)
    Song.new(filename)
    self.new_from_filename(filename)

  end

end
