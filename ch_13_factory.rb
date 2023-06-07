# Пусть имеется фабрика, которая выпускает детские игрушки: плюшевый медвежонок (TeddyBear), мяч (Ball), кубики (Cube). Создайте класс Factory, который 
# имеет метод Factory.build, возвращающий объект классов TeddyBear, Ball или 
# Cube, соответствующий одной из игрушек. В качестве аргумента метод должен 
# принимать один из символов: :teddy_bear, :ball, :cube, по которым будет приниматься решение о том, объект какого класса следует вернуть. В классе Factory
# следует предусмотреть метод total, который возвращает общее количество созданных игрушек. Кроме того, необходимо реализовать метод offers, возвращающий хэш, ключами которого выступают символы :teddy_bear, :ball, :cube, 
# а значениями — количество созданных игрушек этого типа. 

# https://maximomussini.com/posts/ruby-class-variables
# Pizza
# https://www.itcodar.com/ruby/how-to-count-existing-instances-of-a-class-in-ruby.html
# Смотри class_instance_variables.rb с примерами
class ToyType
  def self.call(toy_type)
    if toy_type == :teddyBear
      TeddyBear.new
    elsif toy_type == :ball
      Ball.new
    else
      Cube.new
    end
  end
end

# #Factory
# class Factory
#   @@total = 0

#   def self.total
#     @@total
#   end

#   def build(toy_type)
#     @@total += 1
#     ToyType.call(toy_type)
#   end
# end

# счетчик total реализован без использования переменной класса @@total
class Factory
  @total = 0
  @offers_hash = { ball: 0, teddyBear: 0, cube: 0 }

  # то же самое что и <self.> только с операторными скобками
  class << self
    attr_accessor :total, :offers_hash
  end

  def build(toy_type)
    self.class.total += 1
    self.class.offers_hash[toy_type] += 1 if self.class.offers_hash.include? toy_type
    ToyType.call(toy_type)
  end
end

class TeddyBear
end

class Ball
end

class Cube
end

f = Factory.new
p f.build(:ball)
p f.build(:teddyBear)
p f.build(:teddyBear)

puts Factory.total
puts Factory.offers_hash
