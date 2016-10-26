require 'rspec'
require 'hand'

describe Hand do
  let(:queen_of_hearts) { double("queen of hearts", value: 12, suit: 'heart') }
  let(:queen_of_spades) { double("queen of spades", value: 12, suit: 'spade') }
  let(:eight_of_spades) { double("eight of spades", value: 8, suit: 'spade') }
  let(:nine_of_spades) { double("nine of spades", value: 9, suit: 'spade') }
  let(:ten_of_spades) { double("ten of spades", value: 10, suit: 'spade') }
  let(:cards) { [queen_of_hearts, queen_of_spades, eight_of_spades, nine_of_spades, ten_of_spades]}

  subject(:test_hand) { Hand.new(cards) }

  describe '#high_card' do
    it "return high card" do
      expect(test_hand.high_card).to eq(test_hand.set.sort_by{|card| card.value}.last)
    end
  end

  describe '#one_pair' do
    it "returns one pair" do
      expect(test_hand.one_pair).to eq([queen_of_hearts, queen_of_spades])
    end
  end

end
