class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
   
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    name
  end
  
  
  
#   def self.new_by_filename(filename)
#     file_array = filename.split(" - ")
    
#   #make a new song from the parsed filename
#     new_song = Song.new(file_array[1])
     
#     #use info from parsed filename to find artist
#     artist = Artist.find_or_create_by_name(file_array[0])
    
#     #associate the newly created song with the found or created artist
#     new_song.artist = artist
#     new_song 
   
#   end
# end 
  # def self.new_by_filename(filename)
  #   parts = filename.split(" - ")
  #   new_song = self.new(song)
  #   new_song.artist_name = artist
  #   new_song.save
    
    def self.new_by_filename(filename)
    parts = filename.split(" - ")
    artist_name = parts[0]
    song_name = parts[1].gsub(".mp3", "")

    song = Song.new (song)
    song.name = song_name
    song.artist_name = artist_name
    song
    
  end
  

  def self.find_by_artist(artist)
    Song.all.select do | song |
      song.artist == artist
    end
  end
  
  def self.all
    @@all
  end

  
  def save
    @@all << self
    self
  end
end


# class Song

#   attr_accessor :name, :artist

#   def initialize(name)
#     @name = name
#   end

#   def self.new_by_filename(file_name)
#     parts = file_name.split(" - ")
#     artist_name = parts[0]
#     song_name = parts[1].gsub(".mp3", "")
#     new_song = Song.new(parts[1])
    
   
#     # self.new(name)
#     # song = self.create
#     # song.name = song_name
#     # song.artist_name = artist_name
#     # song
#   end

# end

# class Song
#   attr_accessor :name, :artist
#   @@all = []
#   def initialize(name)
#     @name = name
#     @@all << self 
#   end
  
  
#   def self.all
#     @@all
#   end 
  
#   def self.new_by_filename(filename)
#     file_array = filename.split(" - ")
    
#   #make a new song from the parsed filename
#     new_song = Song.new(file_array[1])
     
#     #use info from parsed filename to find artist
#     artist = Artist.find_or_create_by_name(file_array[0])
    
#     #associate the newly created song with the found or created artist
#     new_song.artist = artist
#     new_song 
   
#   end
# end 
