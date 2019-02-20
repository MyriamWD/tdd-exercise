# blackjack_score.rb
require "awesome_print"

VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, "King", "Queen", "Jack"]
hand = []
hand_random = rand(2...5)

hand_random.times do
  random_card = rand(0...VALID_CARDS.length)
  hand << VALID_CARDS[random_card]
end

def blackjack_score(hand)
  hand_numeric = hand.map do |card|
    card.class == String ? 10 : card
  end
  # coding for ace as 11
  #   ace = hand_numeric.map do |card|
  #     card = 1?
  #   end
  score = hand_numeric.reduce(:+)
  return score
end

puts blackjack_score(hand)
