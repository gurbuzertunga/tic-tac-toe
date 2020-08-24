class Player
   attr_reader :name, :symbol
   @turn = false 
   
   def initialize(name, symbol)
    @name = name
    @symbol = symbol
   end

   def move(block)
     puts 'i made a move'
   end

end