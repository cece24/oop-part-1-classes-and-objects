class Player

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def lives
    @lives
  end

  def gold_coins
    @gold_coins
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1

    if @gold_coins % 10 == 0
      level_up
    end
  end

end

player_1 = Player.new

puts "Lives after levelling up: #{player_1.level_up}"

player_1.collect_treasure
puts "Collected treasure, number of gold coins: #{player_1.gold_coins} and has #{player_1.lives} lives"
