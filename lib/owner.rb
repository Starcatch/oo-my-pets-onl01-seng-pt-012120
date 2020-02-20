class Owner
  attr_reader :species
  attr_accessor :name, :pets, :fish, :dog, :cat

  @@all = []
  @@pets = {:fishes => [], :dogs => [], :cats => []}

  def initialize(species)
    @species = species
    @name = name
    @@all << self
  end