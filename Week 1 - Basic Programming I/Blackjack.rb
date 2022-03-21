class Blackjack

  def initialize
    @deck = Deck.new
  end

  def move
    puts "What would you like to do?"
    user_input = gets.chomp
    case user_input
    when "hit"
      return "hit"
    when "stick"
      return "stick"
    end
  end

  def score(hand)
    values = {
      "two": 2,
      "three": 3,
      "four": 4,
      "five": 5,
      "six": 6,
      "seven": 7,
      "eight": 8,
      "nine": 9,
      "ten": 10,
      "jack": 10,
      "queen": 10,
      "king": 10,
      "ace": 11,
    }

    hand_total = 0
    hand.each {|card| hand_total += values.fetch(card.to_sym)}
    return hand_total

  end

  def run_game 
    hand = []
    loop do
    case move
    when "hit"
      hand << @deck.draw_card
      puts "Score so far: #{score(hand)}"
    when "stick"
      if score(hand) <= 21
        puts "You scored: #{score(hand)}"
        break
      else
        puts "You busted with: #{score(hand)}"
        break
      end
    end
    end
  end

end

class Deck
  attr_reader :cards

  # Don't change this (but make sure you understand it)
  def initialize
    @cards = [
    "two", "three", "four", "five", "six",
    "seven", "eight", "nine", "ten",
    "jack", "queen", "king", "ace"
  ] * 4
  end

  # Don't change this (but make sure you understand it)
  def draw_card
    index = rand(cards.length)
    @cards.delete_at(index)
  end
end

game1 = Blackjack.new
game1.run_game