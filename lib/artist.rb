class Artist

    @@all = [] 
    attr_accessor :name, :songs

    def initialize(name)
        @name = name
        @songs = []
    end

 
    def add_song(song)
        @songs << song
    end

    def save
        @@all << self
    end

    def print_songs
        self.songs.each do |song|
            puts "#{song.name}"
        end
    end

    def self.find_or_create_by_name(name)
        if self.find(name)
            self.find(name)
        else
            artist = self.new(name)
            artist.save
            artist
        end
    end 

    def self.find(name)
        @@all.detect {|artist| artist.name == name}
    end

    def self.all
        @@all
    end


end