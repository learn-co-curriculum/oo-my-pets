class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []
  @@owner_count = 0
  
  def initialize(species = "human")
    @name = name
    @species = species
    @name = self.name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
    @@owner_count += 1
  end

  def self.all 
    @@all
  end

  def self.count 
    @@owner_count
  end
  
  def self.reset_all
    @@owner_count = 0
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    self.pets[:fishes].push(Fish.new(name))
  end

  def buy_cat(name)
    self.pets[:cats].push(Cat.new(name))
  end

  def buy_dog(name)
    self.pets[:dogs].push(Dog.new(name))
  end

  def walk_dogs
    self.pets[:dogs].map {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].map {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].map {|fish| fish.mood = "happy"}
  end

  def sell_pets
    
    self.pets[:dogs].map {|dog| dog.mood = "nervous"}
    self.pets[:cats].map {|cat| cat.mood = "nervous"}
    self.pets[:fishes].map {|fish| fish.mood = "nervous"}
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end