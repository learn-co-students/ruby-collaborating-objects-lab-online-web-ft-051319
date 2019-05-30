# class MP3Importer
#   attr_reader :path

#   def initialize(path)
#     @path = path
#   end

#   def files
#     @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
#   end

#   def import
#     files.each{|f| Song.new_by_filename(f)}
#   end
# end

class MP3Importer
  attr_reader :path
  
    def initialize(path)
      @path = path
    end 
    
    def files
      @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    end
  
    def import 
      files.each {|file| Song.new_by_filename(file)}
    end 
end 
  
 

# def initialize(path)
#     @path = path
#     @files = []
#     Dir.foreach(self.path) do |item|
#       next if item == '.' or item == '..'
#       self.files << item
#     end
#   end