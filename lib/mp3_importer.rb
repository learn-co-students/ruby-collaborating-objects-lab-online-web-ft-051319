require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(musicpath)
    self.path = musicpath
  end

  def files
    filearr=[]
    # mp3path = "#{self.path}/*.mp3"
    Dir.each_child(self.path) {|fname| filearr << fname}
    # binding.pry
    filearr
  end

  def import
    self.files.each do | filename|
      Song.new_by_filename(filename)
    end
  end



end
