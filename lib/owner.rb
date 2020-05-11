class Owner
  attr_reader :name, :species, :count, :owner, :cats
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = {[@cats]}
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

    @cats = {Cat.name=>[]}
  #  arra = Cat.all.select {|owner| owner.name == self}
  #  @cats << arra
  # Cat.all.each do |x|
  #    if x.owner.name == self.name
  #      puts self.name
  #      puts x.name
  #      @cats << x.name
  #    end
  #  end

  end
end
