require_relative 'ch_6_time_hello'
puts (Time.now - Time.mktime(1982, 9, 15)).to_i
puts Time.mktime(1982, 'sep', 15)

hello = Hello.new
hello.say_helo
puts defined? hello
