
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("**/*.mp3").map do |filename|
       File.basename("#{path}/#{filename}")
    end
  end

  def import
    files.each {|filename| Song.new_by_filename(filename) }
  end
end
