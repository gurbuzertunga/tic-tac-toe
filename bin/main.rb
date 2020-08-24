#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

puts 'Game Started!'

puts 'Who is player one?'

user1 = Player.new(gets.chomp, :x)

puts 'Who is player two?'

user2 = Player.new(gets.chomp, :o)

puts user1.symbol
puts user2.symbol

our_board = Board.new( [
    [:o, :o, :x],
    [:o, 2, 2],
    [:o, :o, :x]
  ])

our_board.start_game
# 9.times do
#   puts "It's your move #{user1}! You are O!"

#   gets.chomp

#   puts "Now, your move is displayed on the board #{user1}"

#   puts "It's your move #{user2}! You are X!"

#   gets.chomp

#   puts "Now, your move is displayed on the board #{user2}"
# end
