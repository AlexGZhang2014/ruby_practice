class Person
  attr_accessor :name, :age, :bio

  @@people = []

  def initialize(name, age = nil, bio = nil)
    @name = name
    @age = age
    @bio = bio
  end

  def self.all
    @@people
  end
end
