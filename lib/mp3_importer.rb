require "pry"

class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path=path
  end

  def files
    @@files=Dir.entries(@path).select{|f| f if f.include?("mp3")}
    @@files
  end

  def import
    @@files.each{|i| Song.new_by_filename(i)}
  end


end
