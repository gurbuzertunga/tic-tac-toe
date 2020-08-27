#!/usr/bin/env ruby
require_relative '../lib/board'
require_relative '../lib/player'

puts 'Game Started!'

def display_board(board)
  board.each do |row|
    puts
    row.each do |block|
      print block.to_s + ' '
    end
    puts
  end
  puts
end

puts '1 2 3
4 5 6
7 8 9'

puts 'Instructions: Each player needs to enter a number between 1-9'

puts 'Who is player one?'

user1_name = gets.chomp

player1 = Player.new(user1_name, :x)

puts 'Who is player two?'

user2_name = gets.chomp

player2 = Player.new(user2_name, :o)

my_board = Board.new(player1, player2)

puts display_board(my_board.board)

while my_board.game_running

  puts "It's your move #{my_board.current_player.name}! You are #{my_board.current_player.symbol}!"

  puts my_board.check_on_board(my_board.current_player.symbol, gets.chomp.to_i)

  puts display_board(my_board.board)

  if my_board.win?
    puts "#{my_board.winner} has won the game."
    my_board.end_game
    break
  end
  if my_board.draw?
    puts "IT'S A DRAW"
    my_board.end_game
  end
end
