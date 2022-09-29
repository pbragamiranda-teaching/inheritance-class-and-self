pushi = Restaurant.new(...)
# instance of the class Restaurant

right_now = Time.now
# instance of the class Time
# .now is Class method on the class Time

today = Date.today
# instance of the class Date
# .today is a class method of the class Date

pushi.open?
# open? is an instance method of the class Restaurant

# ["Italian", "Brazilian", "Japanese", "French"] -> .categories
# class method of the class Restaurant
Restaurant.categories
