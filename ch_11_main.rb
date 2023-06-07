require_relative 'ch_11_user'

# arr = Array.new 3, 0

arr = Array.new(3) { UserName.new('vasya', 'Pupkin', rand(100)) }
# arr = Array.new(3) { UserName.new('vasya', 'Pupkin', 11) }

# arr.each { |elem| puts elem.object_id }
summ = arr.reduce(0) do |value, elem|
  value += elem.score
  value
end
avrg = summ / arr.length
p avrg.to_i
