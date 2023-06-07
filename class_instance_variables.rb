# https://maximomussini.com/posts/ruby-class-variables
# Pizza
# https://www.itcodar.com/ruby/how-to-count-existing-instances-of-a-class-in-ruby.html

# class Animal
#   @@animals = []

#   def self.all
#     @@animals
#   end

#   def other_species
#     @@animals - [self.class]
#   end
# end

# class Dog < Animal
#   @@animals << self
# end

# class Cat < Animal
#   @@animals << self
# end

# Animal.all
# # [Dog, Cat]

# Cat.new.other_species
# # [Dog]

# Dog.new.other_species
# # [Cat]
####################################################
# class Animal
#   def self.sound
#     @sound
#   end

#   def talk
#     self.class.sound
#   end
# end

# class Dog < Animal
#   @sound = 'woof!'
# end

# class Cat < Animal
#   @sound = 'meow!'
# end

# Dog.new.talk
# # 'woof!'

# Cat.new.talk
# # 'meow!'

##########################################

class Pizza
  @count = 0
  class << self
    attr_accessor :count
  end

  def initialize
    self.class.count += 1
  end
end

Pizza.new
Pizza.new
puts Pizza.count
