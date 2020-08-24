#!/usr/bin/env ruby

puts 'Game Started!'
puts 'Who is player one?'
user1 = gets.chomp
puts 'Who is player two?'
user2 = gets.chomp

for i in 1..9 do
puts "It's your move #{user1}! You are O!"
user1move = gets.chomp
puts "Now, your move is displayed on the board #{user1}"
puts "It's your move #{user2}! You are X!"
user2move = gets.chomp
puts "Now, your move is displayed on the board #{user2}"
end