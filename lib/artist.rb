require "pry"

class Artist

  attr_accessor :name

  @@all=[]
  #@@names=[]

  def initialize(artist_name)
    @name=artist_name
    #@@names << @name
    @songs=[]
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist=self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.map{|i| i.name}.include?(artist_name) #checks if the argument "artist_name" already has an associated instance
      @@all.find{|i| i.name==artist_name}
    else
      artist=self.new(artist_name) #if the artist_name isn't present then we need to create a new instance
      artist.save #saving it to @@all
      artist #calling the instance
    end
  end

  def print_songs
    array=@songs.map{|i| i.name}
    puts array.join("\n")
  end


end
