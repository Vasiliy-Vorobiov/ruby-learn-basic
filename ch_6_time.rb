# Внутри класса необходимо реализовать 
# метод hello, который выводит приветствие в зависимости от текущего времени 
# суток. С 6:00 до 12:00 метод должен возвращать «Доброе утро», с 12:00 до 18:00 — 
# «Добрый день», с 18:00 до 00:00 — «Добрый вечер», с 00:00 до 6:00 — «Доброй 
# ночи». Подключите класс в файле main.rb и выведите приветствие с его помощь

require_relative 'ch_6_time_hello'
puts (Time.now - Time.mktime(1982, 9, 15)).to_i
puts Time.mktime(1982, 'sep', 15)

hello = Hello.new
hello.say_helo
puts defined? hello
