require 'pry'
require './lib/guess'

class Round
  attr_reader :deck, :guesses, :current_card, :first, :number_correct, :number_incorrect

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = draw_card
    @number_correct = 0
    @number_incorrect = 0
  end

  def draw_card
    @deck.cards.sample(1)
  end

  def record_guess(guess)
    @guesses << Guess.new(guess, current_card)
  end

  def correct?
    round.guesses[0].user_guess == card.answer
      if guess.correct? ==
        number_correct += 1
      else
        number_incorrect += 1
      end
  end

  def first_feedback
    return "Correct!" if correct? == true
    return "Incorrect!" if correct? != true
  end

  def percent_correct
    (@number_correct.to_f/guesses.count) * 100
  end

  def start

  end
end
