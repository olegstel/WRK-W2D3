class Hand
  attr_reader :set

  def initialize(card_set)
    @set = card_set
  end

  def high_card
    set.sort_by { |card| card.value }.last
  end

  def one_pair
    (0..3).each do |i|
      (i + 1..4).each do |j|
        return [set[i], set[j]] if set[i].value == set[j].value
      end
    end
  end

  def three_of_a_kind
    values = Hash.new(0)
    (0..4).each do |i|
      values[set[i].value] += 1
    end

    values.select { |k, v| v == 3 }.key
  end
end
