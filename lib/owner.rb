class Owner
  attr_accessor :cat, :dog
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
     @@owners
  end 
 
end 