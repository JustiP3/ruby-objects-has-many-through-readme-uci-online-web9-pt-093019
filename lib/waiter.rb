class Waiter

  attr_reader :name, :yrs_experience
  @@all = []


  def initialize(name, exp)
    @name = name
    @yrs_experience = exp
    @@all << self
  end

  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.select {|meal| meal.waiter == self}
  end

  def best_tipper 

  end 

  def self.all
    @@all
  end


end #end of class
