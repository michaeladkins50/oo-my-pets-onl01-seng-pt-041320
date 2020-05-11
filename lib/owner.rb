class Owner
  attr_reader :name, :species, :count, :owner, :cats, :dogs
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    count= self.all.length
  end

  def self.reset_all
    @@all = []
  end

  def cats
   Cat.all.select do |cat|
       cat.owner == self
    end
  end

  def dogs
   Dog.all.select do |dog|
        dog.owner == self
    end
  end
end
