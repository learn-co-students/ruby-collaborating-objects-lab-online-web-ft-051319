class Artist
  @@all = []
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all    
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end

  def self.find(name)
    self.all.find {|artist| artist.name == name }
  end


  def self.create(name)
    self.new(name).tap {|artist| artist.save}
  end

  def save
    @@all << self
  end

  def print_songs
    songs.each {|song| puts song.name}
  end
end
# class Artist 
  
#   attr_accessor :name,:songs 
  
#   @@all = []
  
#   def initialize(name)
#     @name = name 
#     @songs = []
#   end 
  
#   def self.all
#     @@all
#   end 
  
#   def add_song(song)
#     song.artist = self
#     @songs << song 
#   end
  
#   def save 
#     @@all << self
#   end 


#   def self.find_or_create_by_name(name)
#     found_artist = @@all.find{ |artist| artist.name == name}
#     if found_artist == nil
#       self.new(name)
#     else
#       found_artist
#     end
#   end
  
#   def print_songs
#     songs.each do |song| 
#   puts song.name
    
#     end 
#   end
# end 

# I am working on the Collaborating lab and the method that associates the new instance to song to with a found artist keeps failing. I even tried the formular from the  learn lab read me. Here is my code and the error. Can someone get on a call to help me?