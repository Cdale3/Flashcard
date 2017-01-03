require 'pry'
class Round
  attr_reader :deck, :guesses, :current_card, :first

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = draw_card
    @first = guesses[0]
  end

  def draw_card
    @deck.cards.shift
  end

  def record_guess(guess)
    @guesses << Guess.new(guess, current_card)
  end

  def first_feedback
    puts "Correct!"
  end
end
