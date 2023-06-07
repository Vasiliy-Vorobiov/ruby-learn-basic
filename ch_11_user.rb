# ghjgjhgjghj
class UserName
  attr_accessor :first_name, :second_name, :score

  def initialize(first_name = '', second_name = '', score = 0)
    @first_name = first_name
    @second_name = second_name
    @score = score
  end
end