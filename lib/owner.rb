class Owner
 attr_accessor :name
 attr_reader :species 
 
 OWNERS = []
 
  def initialize(species)
    @species = species
    O << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end 
  
  def say_species
  end 
end