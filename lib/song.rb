class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    file_array = filename.split(" - ")
    new_song = Song.new(file_array[1])

    artist = Artist.find_or_create_by_name(file_array[0])
    artist.add_song(new_song)
    new_song.artist = artist
  new_song
  end
  
  def artist_name=(name)
    Artist.find_or_create_by_name(name)
    Artist.add_song(name)
  end
  
  # def self.new_by_filename(filename)     
  # artist, song = filename.split(" - ")     
  # new_song = self.new(song)     
  # new_song.artist_name = artist     
  # new_song
  # end    
  
  # def artist_name=(name)  
  # self.artist = Artist.find_or_create_by_name(name)     
  # artist.add_song(self)
  # end

end

