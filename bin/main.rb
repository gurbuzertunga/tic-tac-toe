#!/usr/bin/env ruby
# rubocop:disable Metrics/BlockNesting

played_moves = []

board = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

puts 'Game Started!'

puts 'Who is player one?'

user1 = gets.chomp

puts 'Who is player two?'

user2 = gets.chomp

game_running = true

current_player = 1

def display_board(board)
  winning_move = false
  board.each do |row|
    puts
    row.each do |block|
      print block.to_s + ' '
    end
    puts
  end
  puts
end

while game_running

  puts "It's your move #{current_player == 1 ? user1 : user2}! You are  #{current_player == 1 ? 'o' : 'x'}!"

  current_move = gets.chomp.to_i

  if (1..9).cover?(current_move)
    if played_moves.include?(current_move)
      puts 'this is an invalid move'
      puts 'this block is aready taken'
    else
      played_moves.push(current_move)
      puts "Now, your move is displayed on the board #{current_player == 1 ? user1 : user2}"
      display_board(board)
      winning_move = false  
      if !current_player == 1
        winning_move = true
        puts 'this is a winning move'
        game_running = false
      end

      current_player = current_player == 1 ? 2 : 1

    end
  else
    puts 'this is an invalid move'
    puts 'please enter a number from 1 to 9'
  end

end
# rubocop:enable Metrics/BlockNesting
