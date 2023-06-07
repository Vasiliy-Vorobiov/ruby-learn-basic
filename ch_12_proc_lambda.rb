# def do_something_with_block
#   return 'No block given' unless block_given?

#   yield
# end

# do_something_with_block { puts 'weteb' }
#
# ###########################

# def proc_call(&pr_block)
#   pr_block
# end

# pr = proc { |x, y| x + y }

# # p pr.call(2, 3)

# block = proc_call(&pr)

# p block.call(2, 3)

# lb = ->(x, y = 0) { puts x + y }
# lb.call(3, 2)

def my_method(arr = [], &block)
  # el ||= 0
  # i ||= 0
  lb = lambda(&block)
  arr.each_with_index(&lb)
end

arr = [1, 2, 3]

my_method(arr) { |el, i| puts " #{el}, #{i} " }
