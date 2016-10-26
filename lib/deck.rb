require_relative 'card'
require_relative 'hand'

class Deck
  attr_accessor :cards

  def initialize
    @cards = Card.populate_deck_of_cards
  end

  def draw!
    @cards.pop
  end

  def deal_hand
    hand = []
    5.times { hand <<  @cards.pop }
    Hand.new(hand)
  end

  def count
    @cards.count
  end

  def shuffle!
    @cards.shuffle!
  end
end
