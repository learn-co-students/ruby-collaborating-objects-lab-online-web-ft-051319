require "pry"

class MP3Importer
    attr_accessor :path, :files

    def initialize(path)
      @path = "./spec/fixtures/mp3s"
    end

    def files
        @files = Dir.entries(@path)
        @files.select! {|file| file.reverse[0] == "3"}
    end

    def import
        self.files.each do |file|
            Song.new_by_filename(file)
        end
    end

end

