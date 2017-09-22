class Paperboy

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def name
    @name
  end

  def experience
    @experience
  end

  def earnings
    @earnings
  end

  def quota
    50 + @experience / 2
  end

  def deliver(start_address, end_address)
    papers = (end_address - start_address + 1).abs
    # added +1 to offset counting house numbers inclusively

    if papers > quota
      @earnings += quota * 0.25
      @earnings += (papers - quota) * 0.5
    elsif papers < quota
      @earnings += papers * 0.25 - 2
    else
      @earnings += papers * 0.25
    end

    @experience += papers
    @earnings
  end

  def report
    "I'm #{ name }, I've delivered #{ experience } papers and I've earned #{ earnings } so far!"
  end
end


cece = Paperboy.new("Cece")

puts "#{cece.name}'s experience: #{cece.experience}, earnings: #{cece.earnings}, quota: #{cece.quota}"

cece.deliver(100, 150)
puts cece.report
cece.deliver(100, 150)
puts cece.report

tommy = Paperboy.new("Tommy")

puts tommy.quota # => 50
puts tommy.deliver(101, 160) # => 17.5
puts tommy.earnings #=> 17.5
puts tommy.report # => "I'm Tommy, I've delivered 60 papers and I've earned $17.5 so far!"

puts tommy.quota # => 80
puts tommy.deliver(1, 75) # => 16.75
puts tommy.earnings #=> 34.25
puts tommy.report # => "I'm Tommy, I've been delivered 135 papers and I've earned $34.25 so far!"
