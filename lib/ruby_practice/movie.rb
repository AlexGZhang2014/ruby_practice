class Movie
  attr_accessor :name, :rating, :description

  @@movies = []

  def initialize(name, link = nil)
    @name = name
    @link = link
    @@movies << self
  end

  def self.all
    @@movies
  end
end
