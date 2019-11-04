require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  
  @@all = [] 
  
  def initialize(name)
    @name = name
    end
  
end