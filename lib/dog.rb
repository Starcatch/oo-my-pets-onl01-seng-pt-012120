class Dog
  attr_reader :name
  attr_accessor :mood, :owner 

@@dogs = []
 
  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner 
    @@dogs << self 
  end
  
  def self.all
   @@dogs
end
end 