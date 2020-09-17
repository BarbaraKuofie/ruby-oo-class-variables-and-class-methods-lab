require 'pry'
class Song
    attr_accessor :name, :artist, :genre 

    @@count = 0 
    @@artists = [ ]
    @@genres = [ ]

    def initialize (name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
    end 

    def self.count 
        @@count
    end 

    def self.artists
       @@artists.uniq
    end 

    def self.genres 
        @@genres.uniq
    end 

    def self.genre_count 
       new_hash = Hash.new 
        @@genres.each do |element|
        new_hash[element] = 0 if new_hash[element].nil?
         new_hash[element] = new_hash[element] + 1
        end 
        new_hash
    end 

    def self.artist_count 
        new_hash = Hash.new 
        @@artists.each do |element|
        new_hash[element] = 0 if new_hash[element].nil?
         new_hash[element] = new_hash[element] + 1
        end 
        new_hash
    end 
end 