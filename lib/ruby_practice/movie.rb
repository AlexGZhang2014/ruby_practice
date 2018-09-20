class Movie
  attr_accessor :name, :rating, :description

  @@movies = []

  def initialize(name, rating = nil, description = nil)
    @name = name
    @rating = rating
    @description = description
    @@movies << self
  end

  def self.all
    @@movies
  end
end
