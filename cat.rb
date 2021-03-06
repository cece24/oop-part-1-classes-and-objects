class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time <= 11
      "#{ @meal_time } AM"
    else
      "#{ @meal_time - 12} PM"
    end
  end

  def meow
    "My name is #{ @name } and I eat #{ @preferred_food } at #{ eats_at }"
  end

end

cat_1 = Cat.new("Winston", "plants", 5)
cat_2 = Cat.new("Lil Bub", "salmon", 14)

puts cat_1.meow
puts cat_2.meow
