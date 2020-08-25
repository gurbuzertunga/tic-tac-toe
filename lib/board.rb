# rubocop:disable Naming/MethodParameterName

class Board
  attr_reader :board, :current_player, :game_running, :player1, :player2, :current_move, :winner

  def initialize(player1, player2)
    @board = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
    @played_moves = []
    @current_player = player1
    @is_won = false
    @game_running = true
    @winner = nil
    @player1 = player1
    @player2 = player2
    @current_move = nil
  end

  def display_board
    @board.each do |row|
      puts
      row.each do |block|
        print block.to_s + ' '
      end
      puts
    end
    puts
  end

  def end_game
    @game_running = false
  end

  def check_on_board(symbol, block)
    if (1..9).cover?(block)
      if @played_moves.include?(block)
        'this block is aready taken'
      else
        @played_moves.push(block)
        @board.each_with_index do |row, _row_index|
          row.each_with_index do |block_value, block_index|
            next unless block_value == block

            row[block_index] = symbol
            @current_player = @current_player == @player1 ? @player2 : @player1
            return display_board
          end
        end
      end
    else
      'please enter a number from 1 to 9'
    end
  end

  def set_winner(x, o)
    return unless x >= 3 || o >= 3

    @is_won = true
    @winner = x >= 3 ? :x : :o
  end

  def win?
    # first condition
    @board.each do |row|
      if row.all?(:x)
        @is_won = true
        @winner = :x
        return @is_won
      elsif row.all?(:o)
        @is_won = true
        @winner = :o
        return @is_won
      end
    end

    diag_one
    diag_two
    vertical
    @is_won
  end

  def diag_one
    x = 0
    o = 0
    @board.each_with_index do |row, index|
      if row[index] == :x
        x += 1
      elsif row[index] == :o
        o += 1
      end
    end
    set_winner(x, o)
  end

  def diag_two
    x = 0
    o = 0
    @board.each_with_index do |row, index|
      if row[row.length - 1 - index] == :x
        x += 1
      elsif row[row.length - 1 - index] == :o
        o += 1
      end
    end

    set_winner(x, o)
  end

  def vertical
    x = 0
    o = 0
    (0..2).each do |i|
      @board.each do |row|
        if row[i] == :x
          x += 1
        elsif row[i] == :o
          o += 1
        end
      end
    end
    set_winner(x, o)
    x = 0
    o = 0
  end

  def draw?
    return false if @is_won

    all_done = @board.all? do |row|
      row.all?(Symbol)
    end

    if all_done
      true
    else
      false
    end
  end
end

# rubocop:enable Naming/MethodParameterName
