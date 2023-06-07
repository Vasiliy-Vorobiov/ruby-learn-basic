def method_one
  puts 'method_1'
end

def method_two
  puts 'method_2'
end

arr = [method_one, method_two].join

puts arr
