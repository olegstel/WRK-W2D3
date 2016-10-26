require 'rspec'
require 'deck'

describe Deck do
  subject(:deck) { Deck.new }
  let(:hand) { double("hand") }

  describe '#draw!' do
    it 'draws one card from the deck' do
      card = deck.draw!

      expect(card).to be_an_instance_of(Card)
      expect(deck.count).to eq(51)
    end
  end

  describe '#deal_hand' do
    it 'deals a five card hand' do
     five_card_hand = deck.deal_hand
     allow(hand).to receive(:new)

      expect(five_card_hand.set.count).to eq(5)
      expect(deck.count).to eq(47)
    end
  end

  describe '#shuffle!' do
    it 'shuffles cards' do
      orig_cards = deck.cards.dup
      deck.shuffle!

      expect(deck.cards).to_not eq(orig_cards)
    end
  end

  describe '#count' do
    it 'counts the number of cards left in the deck' do
      expect(deck.count).to eq(52)
    end
  end
end
