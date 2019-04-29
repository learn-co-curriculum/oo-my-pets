require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  OWNER = []

  def self.all
    OWNER
  end

  def self.count
    OWNER.size
  end

  def self.reset_all
    OWNER.clear
  end

  def initialize(species)
    @species = species
    @name = name
    @pets = {cats: [], dogs: [], fishes: []}
    OWNER << self
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name, self)
   @pets[:fishes] << new_fish
   # @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    new_cat = Cat.new(name, self)
   @pets[:cats] << new_cat
   # @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    new_dog = Dog.new(name, self)
   @pets[:dogs] << new_dog
   #@pets[:dogs] << Dog.new(name, self)
   # binding.pry
  end

  def walk_dogs
    # binding.pry
    @pets[:dogs].each do |dog|
      dog.mood="happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood="happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood="happy"
    end
  end

  def sell_pets
    # self.reset_all
    @pets.each do |species, petts|
      petts.each do |animal|
      animal.mood="nervous"
      # binding.pry
    end
    end
    @pets.clear
  end

  def list_pets
     "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
