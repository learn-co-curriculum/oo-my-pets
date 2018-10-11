require 'pry'

class Owner

  attr_accessor :name, :pets, :mood 
  attr_reader :species, :say_species 
  @@all = []
  
  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @name = name 
    @@all << self
    @species = 'human'
    @say_species = 'I am a human.'
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length #counting the length of the owner's array
  end 
  
  def self.reset_all
    @@all = []
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name) 
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    # pets[:dogs].each {|dog| dog.mood = "happy"}
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |breed, pets_array|
      pets_array.each do |pet_object|
        pet_object.mood = "nervous"
      end
      pets[breed] = []
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end