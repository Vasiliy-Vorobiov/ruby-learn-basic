# auto greeting
class Hello
  def say_helo
    if Time.now.hour.between?(18, 24)
      puts 'good night'
    elsif Time.now.hour.between?(0, 17)
      puts 'good night'
    else
      puts 'WTF!'
    end
  end
end
