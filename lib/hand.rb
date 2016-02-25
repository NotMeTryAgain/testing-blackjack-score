require_relative 'deck'
require'pry'

class Hand
  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    value = 0
    @cards.each do |card|
      if ["J", "Q", "K"].include?(card[0])
        value += 10
      elsif card.length > 2
        value += 10
      elsif ["A"].include?(card[0])
       if value <= 10 && ["A"].include?(card[0])
         value += 11
       else
         value += 1
       end
      else
        value += card[0].to_i
      end
    end
    value
  end
end

deck = Deck.new
cards = deck.deal(2)
hand = Hand.new(cards)
# hand.calculate_hand # Get this working properly
