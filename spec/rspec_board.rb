require_relative '../lib/board'

describe Board do  
    let(:board) { Board.new('Gurbuz', 'Ayo') }

  describe '#initialize' do    
    it 'returns the name of the players' do      
    expect(board.player1).to eql('Gurbuz')    
    end
    it 'returns the name of the players' do      
        expect(board.player2).to eql('Ayo')    
    end    
  end

  describe '#end_game' do
    it 'should return a false value' do   
        expect(board.end_game).to eql(false)
    end
  end

  describe '#check_on_board' do
    it 'returns your move marked' do   
        expect(board.check_on_board(:x,5)).to eql("your move is marked on board.")
    end
  end

  describe '#check_on_board' do
    it 'returns unexpected value number' do   
        expect(board.check_on_board(:x,10)).to eql("please enter a number from 1 to 9")
    end
  end

  describe '#set_winner' do
    it 'should return a nil value' do   
        expect(board.set_winner(2,1)).to eql(nil)
    end
  end

  describe '#set_winner' do
    it 'should return a winner symbol' do   
        expect(board.set_winner(2,3)).to eql(:o)
    end
  end

  describe '#win' do
    it 'should return a false value' do   
        expect(board.win?).to eql(false)
    end
  end
end