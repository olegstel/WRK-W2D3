class Card
  attr_reader :value, :suit

  def self.populate_deck_of_cards
    suits = ['diamond', 'club', 'heart', 'spade']
    cards = []
    suits.each do |suit|
      (2..14).each do |value|
        cards << Card.new(value, suit)
      end
    end

    cards
  end

  def initialize(value, suit)
    @value = value
    @suit = suit
  end
end
