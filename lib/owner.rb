class Owner
  attr_accessor :cat, :dog
   # can have a name
     # cannot change owner's name
   attr_reader :name, :species 
   
   @@owners = []
   
   def initialize(name)
     @name = name
     @species = "human"
     @@owners << self 
     @cat = []
     @dog = []
   end 
 end 