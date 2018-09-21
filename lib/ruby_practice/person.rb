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

  def talk(quote)
    puts quote
  end

  def say_my_name
    puts "My name is #{@name}. Don't forget it!"
  end

  def full_intro
    puts "Hello, everyone. My name is #{@name}. I am #{@age} years old. This is my story. #{@bio}"
  end
end
