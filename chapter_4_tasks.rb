# Округлить до 2 знаков
pi = 31.141592
puts pi.round 2

# Вывод массива на отдельной строке
# dasys_of_week = ['mo', 'tu', 'we', 'th', 'fr']
days_of_week = %w[mo tu we th fr]
puts days_of_week

# хэш из названий цветов
my_hash = { red: 'red', blue: 'blue' }
puts my_hash[:blue]

# диапазоны
my_range = 1..5
puts my_range

rainbow_colors = %w[red orange yellow green blue]

rand_index = rand(rainbow_colors.rindex)

puts rainbow_colors[rand_index]
