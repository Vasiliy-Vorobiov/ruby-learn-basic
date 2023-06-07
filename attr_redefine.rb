class Ticket
  attr_writer :price

  def price
    1000
  end
end

tic = Ticket.new
tic.price = 2

puts tic.price
