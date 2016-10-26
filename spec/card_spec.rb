require 'rspec'
require 'card'

describe Card do
  describe '#initialize' do
    it "should initialize with a value and suit" do
      card = Card.new(3, 'heart')
      
      expect(card.value).to eq(3)
      expect(card.suit).to eq("heart")
    end
  end


end
