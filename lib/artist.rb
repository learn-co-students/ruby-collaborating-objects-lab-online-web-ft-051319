require "pry"

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  # def self.find_or_create_by_name(name)
  #   @@all.find do |artist|
  #     artist.name ||= name
  #     Artist.new(name)
  #   end
  # end

  def self.find_or_create_by_name(name)
    artist_search = self.all.find {|artist| artist.name == name }
    artist_create = self.new(name).tap {|artist| artist.save}
    artist_search ? artist_search : artist_create
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
