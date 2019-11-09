class Waiter

  attr_reader :name, :yrs_experience
  @@all = []


  def initialize(name, exp)
    @name = name
    @yrs_experience = exp
    @@all << self
  end

  def new_meal(cutomer, total, tip)
    Meal.new(self, customer, total, tip)
  end

  def self.all
    @@all
  end


end #end of class
