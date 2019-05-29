class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    found_arist = @@all.find{ |artist| artist.name == name}
    if found_arist == nil
      self.new(name)
    else
      found_arist
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
