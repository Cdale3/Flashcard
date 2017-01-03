class Guess
attr_reader :user_guess, :card

  def initialize(user_guess, card)
    @user_guess = user_guess
    @card = card
  end

  def response
    user_guess
  end

  def correct?
    user_guess == card.answer
  end

  def feedback
    return "Correct!" if correct? == true
    return "Incorrect!" if correct? != true
  end

end
