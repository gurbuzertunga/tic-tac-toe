require_relative '../lib/board'
require_relative '../lib/player'

describe Board do
  let(:player1) { Player.new('player1', :x) }
  let(:player2) { Player.new('player2', :o) }
  let(:board) { Board.new(player1, player2) }

  describe '#end_game' do
    it 'should end the game and return false' do
      expect(board.end_game).not_to eql(true)
    end
  end

  describe '#check_on_board' do
    it 'Takes a symbol and a block, mark block with the given symbol' do
      expect(board.check_on_board(:x, 1)).to eql('your move is marked on board.')
    end

    it 'If the block is already taken, should stop and return so' do
      board.check_on_board(:x, 1)
      expect(board.check_on_board(:x, 1)).to eql('this block is aready taken')
    end

    it 'should validate the input to be an number from 1 to 9' do
      expect(board.check_on_board(:x, 10)).to eql('please enter a number from 1 to 9')
    end
  end

  describe '#win?' do
    it 'return false if there is no win situation' do
      expect(board.win?).not_to eql(true)
    end

    it 'return true if a row is marked with the same symbol' do
      board.check_on_board(:x, 1)
      board.check_on_board(:x, 2)
      board.check_on_board(:x, 3)
      expect(board.win?).to eql(true)
    end

    it 'return true if the left diagonal is marked with the same symbol' do
      board.check_on_board(:x, 1)
      board.check_on_board(:x, 5)
      board.check_on_board(:x, 9)
      expect(board.win?).to eql(true)
    end

    it 'return true if the right diagonal is marked with the same symbol' do
      board.check_on_board(:x, 3)
      board.check_on_board(:x, 5)
      board.check_on_board(:x, 7)
      expect(board.win?).to eql(true)
    end

    it 'return true if the right diagonal is marked with the same symbol' do
      board.check_on_board(:x, 3)
      board.check_on_board(:x, 5)
      board.check_on_board(:x, 7)
      expect(board.win?).to eql(true)
    end

    it 'return true if the any vertical column is marked with the same symbol' do
      board.check_on_board(:x, 1)
      board.check_on_board(:x, 4)
      board.check_on_board(:x, 7)
      expect(board.win?).to eql(true)
    end
  end

  describe '#draw' do
    it 'return false if the game is already won' do
      board.check_on_board(:x, 1)
      board.check_on_board(:x, 4)
      board.check_on_board(:x, 7)
      expect(board.draw?).to eql(false)
    end

    it 'return true if the all blocks are taken and there is no win condition' do
      board.board = [
        %i[x o x],
        %i[o x o],
        %i[o x o]
      ]
      expect(board.draw?).to eql(true)
    end
  end
end
