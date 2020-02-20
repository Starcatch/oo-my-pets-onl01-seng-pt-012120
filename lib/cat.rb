class Cat
  attr_reader :name
  attr_accessor :mood, :owner
 @@cats = []
  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner
    @@cats << self
    owner.cat << self 
  end
end