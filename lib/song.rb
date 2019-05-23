require 'pry'

class Song
  @@all=[]
  attr_accessor  :name, :artist

  def self.all
    @@all
  end

  def initialize(name)
    @name=name
    @@all << self
  end

  # def save
  #   @@all << self
  # end

  def artist_name

    if self.artist != nil
      self.artist.name
    else
      nil
    end
  end

  def self.new_by_filename(filename)
    artistname=filename.split(" - ")[0]
    songname=filename.split(" - ")[1]

    newsong=self.new(songname)

    newsong.artist= Artist.find_or_create_by_name(artistname)

    # if newsong.artist.songs.include?(self) == false
    nartist = newsong.artist
    if nartist.songs.include?(newsong) == false
      nartist.add_song(newsong)
    end

    # end
    # binding.pry
    newsong

  end

  # def artist= (artistname)
  #   aname = Artist.find_or_create_by_name (artistname)
  #   binding.pry
  # end





end
