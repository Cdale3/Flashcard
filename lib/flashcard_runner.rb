require './lib/guess'
require './lib/card'
require './lib/round'
require './lib/deck'
require 'pry'


puts "Welcome! You're playing with 4 cards"
puts "------------------------------------------"



deck = Deck.new([])
card1 = Card.new("What is the best sport in the world?", "Football")
card2 = Card.new("What is the best city in the country?", "Denver")
card3 = Card.new("What is a bar for nerds in Denver?  (Hint: it has one digit in the answer)", "1up")
card4 = Card.new("What is the elevation of Denver(in feet)?", "5280")

deck.cards << card1
deck.cards << card2
deck.cards << card3
deck.cards << card4

puts "Question 1 of 4"
first_card = Round.new(deck).deck.cards[0]
first_question = first_card.question
puts first_question
user_guess = gets.chomp.downcase
current_guess = Guess.new(user_guess, first_card)
puts current_guess.feedback


puts "Question 2 of 4"
second_card = deck.cards[1]
second_question = second_card.question
puts second_question
user_guess = gets.chomp.downcase
current_guess = Guess.new(user_guess, second_card)
puts current_guess.feedback

puts "Question 3 of 4"
third_card = deck.cards[2]
third_question = third_card.question
puts third_question
user_guess = gets.chomp.downcase
current_guess = Guess.new(user_guess, third_card)
puts current_guess.feedback

puts "Question 4 of 4"
fourth_card = deck.cards[3]
fourth_question = fourth_card.question
puts fourth_question
user_guess = gets.chomp.downcase
current_guess = Guess.new(user_guess, fourth_card)
puts current_guess.feedback

puts "**G**A**M**E**O**V**E**R**"

puts Guess.correct?.total_correct
