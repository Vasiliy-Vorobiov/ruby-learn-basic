require_relative 'chapter_5_lib'

User_1 = User.new
User_1.setfirst_name 'Вася'
User_1.setsecond_name 'pupkin'

# puts User_1.getfirst_name, User_1.getsecond_name

puts $LOAD_PATH.length

puts Time.now

puts ARGV
