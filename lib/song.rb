require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all

  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    @@all << song
    song
  end

  def self.new_by_name(song_name)
    song = self.create
    song.name = song_name
    song
  end

  def self.create_by_name(song_name)
    song = self.create
    song.name = song_name
    @@all << song
    song
  end

  def self.find_by_name(string_name)
    @@all.find do |n|
      n.name == string_name
    end
  end

  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end

  def self.alphabetical
    @@all.sort_by
  end


end
