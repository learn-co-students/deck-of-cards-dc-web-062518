require 'pry'

class Deck

  attr_accessor :cards

  def initialize
    @cards = []
    suit_array = ["Hearts", "Clubs", "Diamonds", "Spades"]
    rank_array = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suit_array.each do |suit|
      rank_array.each do |rank|
        @cards << Card.new(suit, rank)
        #binding.pry
      end
    end
  end

  def choose_card
    random_card = @cards.sample
    @cards.delete(random_card)
  end

end


class Card

  attr_accessor :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

end

#binding.pry
