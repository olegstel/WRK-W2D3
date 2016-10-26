require 'rspec'
require 'card'

describe Card do
  subject(:card) { Card.new(3, 'heart') }

  describe '#value' do
    it "return the value" do
      expect(card.value).to eq(3)
    end

    it "return the suit" do
      expect(card.suit).to eq("heart")
    end
  end

  describe '::populate_deck_of_cards' do
    let(:deck) { Card.populate_deck_of_cards }

    it "returns a deck of 52 card objects" do
      expect(deck.count).to eq(52)
      expect(deck.all? { |card| card.class == Card }).to be true
    end
  end
end
