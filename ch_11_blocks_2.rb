arr = %w[cat dog tiger]

arr2 = arr.each_with_object([]) do |elem, l_arr|
  l_arr << elem if elem.include?('t')
end

p arr2
