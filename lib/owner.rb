class Owner
  attr_reader :name, :species, :count, :owner, :cats, :dogs
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs =[]
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
   Cat.all.select do |x|
       if x.owner.name == self.name
      #  puts self.name
      #  puts x.name
        @cats = x.name
      end
    end
  end

  def dogs
   Dog.all.select do |x|
       if x.owner.name == self.name
        puts self.name
        puts x.name
        @dogs = x.name
      end
    end
  end
end
