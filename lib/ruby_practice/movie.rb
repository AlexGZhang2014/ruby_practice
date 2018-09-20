class Movie
  attr_accessor :name, :rating, :description

  @@movies = []

  def initialize(name, link = nil, description = nil)
    @name = name
    @link = link
    @description = description
    @@movies << self
  end

  def self.all
    @@movies
  end
end
