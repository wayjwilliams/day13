class Hand
  attr_reader :cards

  def initialize
    @cards = []
  end

  def new_card(card)
    @cards << card
  end

  def value
    total = 0
    @cards.each do |card|
      total += card.value
    end
    total
  end
end

class Card
  attr_reader :suit, :value, :name

  def initialize(suit, value)
    @suit = suit
    @name = value

    if ["J", "Q", "K"].include?


class Deck

  def initialize

    @cards = []

    %i(hearts clubs diamonds spades).each do |suit|
      (2..10).each.do |value|
        @cards << Card.new(suit, value)
      end
      ["J", "Q", "K", "A".each do |facecard|

  def deal

  end
end

class Game
  def run

    dealer_hand = Hand.new
    player_hand = Hand.new

    deck = Deck.new

    2.times do
      player_hand.new_card(deck.deal)
      dealer_hand.new_card(deck.deal)
    end


    continue_to_play = true

    while continue_to_play
      puts "Welcome to Blackjack"
      puts "Dealer Card: #{dealer_hand.cards.first}"
      puts "Your Cards: #{player_hand.cards.join(" - ")}"
      puts "Hit or Stay (h/s)"
      command = gets.chomp
      if command == "h"
        player_hand.new_card(deck.deal)
      else
        puts "You stay"
        continue_to_play = false
      end

      if player_hand.value > 21
        continue_to_play = false
      end

    end

while dealer_hand.value <= 16
  dealer_hand.new_card.deck.deal
end
