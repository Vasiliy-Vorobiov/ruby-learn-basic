class Hello
  @some_str = ''

  def initialize(some_str)
    @some_str = some_str
  end

  def to_s
    @some_str
  end
end

# kjhkjh
class User
  attr_accessor :first_name, :second_name

  def initialize(first_name: '', second_name: '')
    @first_name = first_name

    @second_name = second_name
  end

  def to_s
    "#{@first_name} #{@second_name}"
  end
end

class Group
  def initialize(*users)
    @users = users
  end

  def each(&block)
    @users.each(&block)
  end
end

class List
  @hash = {}
  def initialize(*args)
    @hash = args.to_h
  end
end

# inst = Hello.new('ghjghjhgjgjhgjgghgghjgj') 

# puts inst

us = User.new(first_name: 'Vasya', second_name: 'Ivanov')

puts us
