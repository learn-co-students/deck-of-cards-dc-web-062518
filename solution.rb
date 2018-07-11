require 'pry'
class Deck
  attr_accessor :cards
  def initialize
    @cards = []
    suits = ["Hearts","Clubs","Diamonds", "Spades"]
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

    suits.each do |suit|
      ranks.each do |rank|
        @cards << Card.new(suit,rank)
      end
    end
    @cards
  end

  def choose_card
    num = Random.new
     card = num.rand(0...51)
    your_card = @cards[card]

    @cards.slice!(card)
    your_card
  end
end

class Card
  attr_accessor :suit, :rank
def initialize(suit,rank)
  @suit = suit
  @rank = rank
end
end
