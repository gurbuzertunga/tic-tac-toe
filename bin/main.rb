#!/usr/bin/env ruby
puts 'Game Started!'

puts 'Who is player one?'

user1 = gets.chomp

puts 'Who is player two?'

user2 = gets.chomp

9.times do
  puts "It's your move #{user1}! You are O!"

  gets.chomp

  puts "Now, your move is displayed on the board #{user1}"

  puts "It's your move #{user2}! You are X!"

  gets.chomp

  puts "Now, your move is displayed on the board #{user2}"
end

