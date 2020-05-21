class MusicImporter


attr_accessor :path

  def initialize(path)
    @path = path
    Song.create_from_filename
  end

  def files
    Dir.glob("#{path}/*.mp3").collect {|file| file.gsub("#{path}/","")}
  end

  def import
    Song.create_from_filename

  end

#normalizes the filename to just the MP3 filename with no path
#loads all the MP3 files in the path directory

def path
  @path
end

end
