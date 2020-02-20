class Owner
  attr_accessor :cats, :dogs
   # can have a name
     # cannot change owner's name
     # initializes with species set to human
      #can't change its species
   attr_reader :name, :species 
   
   @@owners = []
   
   def initialize(name)
     @name = name
     @species = "human"
     @@owners << self 
     @cat = []
     @dog = []
   end 
   
   def say_species 
     #can say its species
     "I am a #{self.species}."
   end 
   
   def self.all
     # .all returns all instances of Owner that have been created
     @@owners
  end 
  
  def self.count
    # .count returns the number of owners that have been created
      self.all.length
  end 
  
  def self.reset_all 
    # .reset_all can reset the owners that have been created
    self.all.clear
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
  
  
  def buy_dog(name)
    Dog.new(name, self)
  end 
  
  def buy_cat(name)
    Cat.new(name, self)
  end 
 
 def walk_dogs
   #walks the dogs which makes the dogs' moods happy
   self.dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    #feeds cats which makes the cats' moods happy
    self.cats.each {|cat| cat.mood = "happy"}
  end
  
   def sell_pets	
        all_pets = self.cats + self.dogs	
        all_pets.each do |pet|	
            sell_pet(pet)	
        end	
    end
    
    def sell_pet(pet)	
        pet.owner = nil	
        pet.mood = "nervous"	
    end
    
    #def sell_pets
    #self.cats.each do |cat|
    #  self.cats.delete(cat)
    #  cat.owner = nil
     # cat.mood = "nervous"
   #end
   # self.dogs.each do |dog|
   #self.dogs.delete(dog)
   #      dog.owner = nil

    
    
    
    
    def list_pets	
        number_of_dogs = self.dogs.count	
        number_of_cats = self.cats.count	
        return "I have #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."	
    end

 end 