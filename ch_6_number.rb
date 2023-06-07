# программа должна сообщать, передано ей четное или нечетное число

def check_if_even(arr)
  (if arr.empty?

     puts 'empty array'

     false

   elsif !arr[0].is_a? Integer

     puts 'must be an integer'

     false

   else

     arr[0].even?

   end)
end

arr = ['ghjgj']

puts check_if_even(arr)

puts 3.between?(1, 3)
