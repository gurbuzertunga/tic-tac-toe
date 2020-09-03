require_relative '../lib/player'

describe Player do
  let(:player1) { Player.new('player1', :o) }
  describe '#initialize' do
    it 'should create an instance of the player object' do
      expect(player1).to be_a(Player)
    end

    it 'Instance should have name' do
      expect(player1.name).to eql('player1')
    end

    it 'Instance should have a sybmol' do
      expect(player1.symbol).to eql(:o)
    end
  end
end
