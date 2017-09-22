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
    papers = (end_address - start_address).abs

    if papers > quota
      @earnings += quota * 0.25
      @earnings += (papers - quota) * 0.5
    elsif papers < quota
      @earnings += papers * 0.25 - 2
    else
      @earnings += papers * 0.25
    end

    @experience += papers
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
