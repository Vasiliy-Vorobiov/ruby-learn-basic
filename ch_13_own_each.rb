# weekdays
# Создайте класс дней недели Week. Объекты класса должны отзываться на метод each, 
# в блок которого передаются названия дней недели: 
# понедельник, вторник, среда, четверг, пятница, суббота и воскресенье. 
class Week
  attr_accessor :weekdays



  def initialize
    @weekdays = %w[monday tuesday]
  end

  def add(element)
    @weekdays.append(element)
  end

  def delete(element)
    @weekdays.delete(element)
  end



  #  Так тоже работает

  # def each

  #   @weekdays.each do |element|

  #     yield element

  #   end

  # end



  # Так короче

  def each(&block)
    @weekdays.each(&block)
  end
end



w = Week.new

w.each { |elem| puts elem }



w.add 'wednesday'

w.delete 'monday'



w.each { |elem| puts elem }
