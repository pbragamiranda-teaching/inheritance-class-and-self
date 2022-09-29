class Chef
  attr_reader :name, :restaurant

  def initialize(name, restaurant)
    @name = name # name is an instance of the Class String
    @restaurant = restaurant # restaurant is an instance of the Class Restaurant
  end
end
