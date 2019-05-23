require 'pry'
class Artist

  attr_accessor :name, :songs
  @@all=[]


  def initialize(name)
    @name = name
    @songs=[]

  end

  def save
    @@all << self
  end

  def add_song(song)
    # binding.pry
    song.artist = self
    @songs << song
  end

  def add_song_by_name(name)
    newsong = Song.new(name)
    newsong.artist = self
    @songs << newsong
  end

  def self.all
    @@all
  end

  def self.song_count
    allsongcount=0
    self.all.each do |artist|

      allsongcount += artist.songs.length

    end
    allsongcount

  end

  def self.find_or_create_by_name(name)
    flg = false
    returnartist=nil
    matcharr=[]

    matcharr=@@all.detect {|artist|  artist.name == name}
    # binding.pry
    if matcharr == nil
        newartist = Artist.new(name)
        newartist.save
        # binding.pry
        returnartist=newartist
    else
  #       binding.pry
        returnartist = matcharr
    end
    # binding.pry
    returnartist
  end

  def print_songs
    self.songs.each do |song|
      puts "#{song.name}"
    end
  end


end
