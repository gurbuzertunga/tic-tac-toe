class Board

  @current_player = nil
  @is_won = false
  @winner = nil

  def initialize (user, move)
   @user = user
   @move = move
   @board = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ]
  end
  
  def start_game()
    if win?()
      puts "#{@winner} has won the game."
    else 
      puts 'game is running .....' 
    end
  end

  def check_on_board(symbol, block)
    :x
    :o
    @board.each_with_index do |row, row_index|
      row.each_with_index do |block_value, block_index|
        if block_value == block 
          row[row_index][block_index] = symbol
        end
      end
    end
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
    if x >= 3 || o >= 3
      @is_won = true
      @winner = x >= 3 ? :x : :o
    end
    end

    def diag_two
      x = 0
      o = 0
     @board.each_with_index do |row, index| 
        if row[row.length() - 1 - index] == :x
          x += 1
        elsif row[row.length() - 1 - index] == :o
          o += 1
        end
      end

      if x >= 3 || o >= 3
        @is_won = true
        @winner = x >= 3 ? :x : :o
      end
    end
    
    def vertical
      x = 0
      o = 0
      for i in 0..2 do
        @board.each do |row|
         if row[i] == :x 
        x += 1
         elsif row[i] == :o
        o += 1
         end
        end
      end 
    if x >= 3 || o >= 3
      @is_won = true
      @winner = x >= 3 ? :x : :o
    end
   end
    diag_one
    diag_two
    vertical
    return @is_won
  end

end

