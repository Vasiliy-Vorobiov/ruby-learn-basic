class Ticket
  attr_accessor :date, :price

  def initialize
    yield self
  end

  def to_s
    "#{date}  #{price}"
  end
end

ticket = Ticket.new do |t|
  t.price = 600
  t.date = Time.now
end

puts ticket
