class Guess
attr_reader :user_guess, :card, :total_correct

  def initialize(user_guess, card)
    @user_guess = user_guess
    @card = card
  end

  # def response
  #   user_guess      #can I have my tests still wrok with this gone?
  # end

  def correct?
    if user_guess == card.answer.downcase
      @total_correct =+ 1
     return true
   else
     return false
    end
  end

  def feedback
    return "Correct!" if correct? == true
    return "Incorrect!" if correct? != true
  end
end
