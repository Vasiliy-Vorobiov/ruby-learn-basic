# if ARGV.length == 0 return nil
# my_array = ARGV.map{ |item| item.to_i }
# my_array = ARGV.map { |item| item.to_i }.reduce { |m, x| m += x}
# my_array = ARGV.map { :to_i }.reduce { |m, x| m += x }
# самая короткая форма
my_array = ARGV.map { :to_i }.reduce { :+ }

p my_array
