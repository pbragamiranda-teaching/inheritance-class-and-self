class GastronomicRestaurant < Restaurant
  attr_reader :chef

  def initialize(name, city, category, stars, chef_name)
    super(name, city, category)
    @stars = stars
    # GastronomicRestaurant.new("Pushi", "Cape Town", "Asian", 2, "kiki kennedy")
    # self refers to the recently created instance
    @chef = Chef.new(chef_name, self)    # Chef class
  end

  def open?
    # also open from 18 to 23
    super &&  Time.now.hour >= 18 && Time.now.hour <= 23
  end

  def display_clients
    # super
    puts "Go away paparazis... private list"
  end

  def welcome
    # self inside instance method
    # self refers to the instance in which the method was called
    # self is optional
    return "Welcome to #{self.name}!"
  end
end

# obar = GastronomicRestaurant.new("Obar", "Sidney", "Meat", 3)
# carol = GastronomicRestaurant.new("Carol Co.", "Cape Town", "Asian", 5)

# obar.welcome

# carol.welcome






# p obar.open?

# obar.book("kiki")
# obar.book("nico")
# p obar.display_clients
