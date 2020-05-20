class MusicImporter

  def initialize
    Song.create_from_filename(filename)
  end

  def path

  end

  def import
    Song.create_from_filename(filename)

  end

#normalizes the filename to just the MP3 filename with no path
#loads all the MP3 files in the path directory
  def files

  end

end
