class Restaurant
  # OOP = STATE + BEHAVIOR
  attr_reader :name, :city
  attr_accessor :category

  # STATE
  def initialize(name, city, category)
    @name = name
    @city = city
    @category = category
    @clients = []
  end

  # BEHAVIOR
  def open?
    # it's only open from 12 to 16
    Time.now.hour >= 12 && Time.now.hour <= 16
  end

  def closed?
    !open?
  end

  def book(client)
    @clients << client
  end

  def display_clients
    @clients.each_with_index do |client, index|
      puts "#{index + 1}. #{client}"
    end
  end

  # CLASS METHOD
  # add self. before the method name
  def self.categories
    # return "TODO: print all categories.."
    return ["Italian", "Brazilian", "Japanese", "French"]
  end
end
