class Board

  @current_player = nil
  @is_won = false
  @winner = nil

  def initialize (board)
   @board = board
  end
  
  def start_game()
    if win?()
      puts "#{@winner} has won the game."
    else 
      # loop
      puts 'game is running .....' 
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
    
    x = 0
    o = 0

    @board.each_with_index do |row, index| 
        if row[index] == :x
          x += 1
        elsif row[index] == :o
          o += 1
        end
    end

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

    return @is_won
  end

end

