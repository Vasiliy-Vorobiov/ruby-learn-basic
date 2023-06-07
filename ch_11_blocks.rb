arr = []

input ||= ''
until input == 'stop'
  print 'Введите: '
  input = gets.chomp
  arr << input if input != 'stop'
  p arr if input != 'stop'
end

arr.reject! { |str| str == '' }
arr.sort!

arr2 = arr.each_with_object([]) do |elem, new_arr|
  new_arr << elem if new_arr.last != elem
end

p arr2
