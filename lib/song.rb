class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name=name
  end

  def artist_name=(name)
    self.artist=Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
#    if self.artist.nil? #check to see if an artist attribute has been assigned to this Song
#      self.artist=Artist.new(name) #if not, then create a new Artist object linked to this song
#    else
#      self.artist.name=name #if there's an artist attribute then make sure the attribute of the Artist instance is given
#                            #the name in the argument
#    end
#    self.artist.add_song(self)
  end

  def self.new_by_filename(file)
    array=file.split(" - ")
    song=self.new(array[1])
    song.artist_name=(array[0])
#    song.artist.add_song(array[1])
#    song.artist.save
    song
  end

end
