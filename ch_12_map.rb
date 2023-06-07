def my_map(arr)
  arr_new = []
  # arr = []
  arr.each do |x|
    arr_new.append yield x
  end
  arr_new
end

arr = [1, 1, 1]
p my_map(arr) { |x| x + 1 }

# t = Proc.new { |x, y| puts "I don't care about arguments!" }
# t.call
