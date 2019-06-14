require 'pry'

class Deck
  attr_accessor :cards

  def initialize
    @cards =[]
    suit_array = ["Hearts", "Clubs", "Diamonds", "Spades"]
    rank_array = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

#iterate through suits and rank to create cards
    suit_array.each do |suit|
      rank_array.each do |rank|
        @cards << Card.new(suit,rank)
      end
    end
  end

  def choose_card
      var =@cards.sample
      @cards.delete (var)
  end
end

class Card
  attr_accessor :suit,:rank

  def initialize(suit,rank)
    @rank =rank
    @suit =suit
  end
end

# binding.pry
# puts "hi"
