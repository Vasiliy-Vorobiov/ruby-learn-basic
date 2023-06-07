# Заполните массив цветов colors названиями цветов, полученными от пользователя методом gets. Количество цветов не должно быть ограничено, после ввода 
# цвета пользователю должно быть предложено ввести дополнительный цвет. Для 
# того чтобы прервать ввод, необходимо ввести стоп-слово 'stop'. После этого 
# необходимо вывести список цветов в стандартный поток вывода. 

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
