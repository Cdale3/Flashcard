require 'pry'
require './lib/guess'
class Round
  attr_reader :deck, :guesses, :current_card, :first

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = draw_card
  end

  def draw_card
    @deck.cards.sample(1)
  end

  def record_guess(guess)
    @guesses << Guess.new(guess, current_card)
  end

  def correct?
    round.guesses[0].user_guess == card.answer
  end

  def first_feedback
    return "Correct!" if correct? == true
    return "Incorrect!" if correct? != true
  end

end
