 
#!/usr/bin/env ruby
# rubocop:disable Metrics/BlockNesting

require_relative ('../lib/board')
require_relative ('../lib/player')

puts 'Game Started!'

puts 'Who is player one?'

user1_name = gets.chomp

player1 = Player.new(user1_name, :x)

puts 'Who is player two?'

user2_name = gets.chomp

player2 = Player.new(user2_name, :o)

my_board = Board.new(player1,player2)

while my_board.game_running

  puts "It's your move #{my_board.current_player.name}! You are #{my_board.current_player.symbol}!"

  puts my_board.check_on_board(my_board.current_player.symbol, gets.chomp.to_i) 
    
    if my_board.win?()
        puts "#{my_board.winner} has won the game."
        my_board.end_game
    end
end

# rubocop:enable Metrics/BlockNesting
