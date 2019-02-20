require "minitest"
require "minitest/spec"
require "minitest/autorun"
require "minitest/reporters"
require "minitest/pride"

require_relative "../lib/blackjack_score"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Blackjac Score" do
  it "can calculate the score for a pair of number cards" do

    # Arrange
    hand = [3, 4]

    # Act
    score = blackjack_score(hand)

    # Assert <-  You do this part!
    expect(score).must_equal 7
  end

  it "facecards have values calculated correctly" do
    # Arrange
    facecards = ["King", "Jack", "Queen"]
    # Act
    facecards.each do |facecard|
      score = blackjack_score([facecard, 6])
      # Assert
      expect(score).must_equal 16
    end
  end

  it "calculates aces as 11 where it does not go over 21" do
    # Arrange
    hand = [1, 1]
    # Act
    score = blackjack_score(hand)
    # Assert

  end

  it "calculates aces as 1, if an 11 would cause the score to go over 21" do
    (2..10).each do |card|
      # Arrange
      hand = [card, 1]
      # Act

    end
  end

  it "raises an ArgumentError for invalid cards" do
  end

  it "raises an ArgumentError for more than 5 cards in the hand" do
  end
end
