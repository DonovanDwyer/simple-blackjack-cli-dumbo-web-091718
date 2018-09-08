def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
end

def hit?(num)
  total = num
  prompt_user
  round = get_user_input
case round
  when round == "h"
    return total += deal_card
  when round == "s"
    return total
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
