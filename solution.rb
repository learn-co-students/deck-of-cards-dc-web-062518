require "pry"
class Card
  attr_accessor :suit, :rank
  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
end

class Deck
attr_accessor :cards
  def initialize
    @cards = []
    rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
    suit.each do |s|
      rank.each do |r|
        @cards << Card.new(s, r)
      end
    end
  end

  def choose_card
    card = @cards.sample
    @cards.delete (card)
  end
end
