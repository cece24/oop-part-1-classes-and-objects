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

  def health_points
    @health_points
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

  def do_battle(damage)
    @health_points -= damage

    if @health_points < 0
      @lives -= 1
      @health_points = 10

      if @lives == 0
        restart
      end
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    "Game has restarted."
  end

end

player_1 = Player.new

puts "Lives after levelling up: #{player_1.level_up}"

player_1.collect_treasure
puts "Collected treasure, number of gold coins: #{player_1.gold_coins} and has #{player_1.lives} lives"

player_1.do_battle(11)
puts "Player does battle, now has #{player_1.health_points} health points and #{player_1.lives} lives"

player_1.do_battle(11)
puts "Player does battle, now has #{player_1.health_points} health points and #{player_1.lives} lives"
player_1.do_battle(11)
puts "Player does battle, now has #{player_1.health_points} health points and #{player_1.lives} lives"
player_1.do_battle(11)
puts "Player does battle, now has #{player_1.health_points} health points and #{player_1.lives} lives"
player_1.do_battle(11)
puts "Player does battle, now has #{player_1.health_points} health points and #{player_1.lives} lives"
player_1.do_battle(11)
puts "Player does battle, now has #{player_1.health_points} health points and #{player_1.lives} lives"
player_1.do_battle(11)
puts "Player does battle, now has #{player_1.health_points} health points and #{player_1.lives} lives"

puts player_1.restart
puts "Player does battle, now has #{player_1.health_points} health points and #{player_1.lives} lives"
