class BankAccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest
    @balance *= (@interest_rate + 1)
  end
end

my_account = BankAccount.new(1000, 0.05)

puts "After my deposit: #{my_account.deposit(500)}"
puts "After my withdrawal: #{my_account.withdraw(200)}"
puts "After gaining interest: #{my_account.gain_interest}"
