puts "Welcome! You're putslaying with 4 cards"
puts "------------------------------------------"
puts "This is card number 1 of 4."
puts "Question: What is 5 + 5?"

  user_guess = gets.chomp.to_i
  if user_guess == 10
    puts "Correct!"
  elsif user_guess != 10
    puts "Incorrect!"
  end

puts "This is card number 2 out of 4"
puts "Question: What is Rachel's favorite animal?"
  user_guess = gets.chomp.downcase
  if user_guess == "panda"
    puts "Correct!"
  elsif user_guess != 10
    puts "Incorrect"
  end

puts "This is card number 3 out of 4."
puts "Question: What is Mike's middle name?"
  user_guess = gets.chomp.downcase
  if user_guess == "nobody knows"
puts "Correct!"
  elsif user_guess != "nobody knows"
puts "Incorrect!"
  end


# This is card number 3 out of 4.
# Question: What is Mike's middle name?
# nobody knows
# Correct!
# This is card number 4 out of 4.
# Question: What cardboard cutout lives at Turing?
# Justin Bieber
# Correct!
# ****** Game over! ******
# You had 3 correct guesses out of 4 for a score of 75%.
