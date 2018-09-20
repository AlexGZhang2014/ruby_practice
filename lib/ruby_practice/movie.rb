class Movie
  attr_accessor :name, :link

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
