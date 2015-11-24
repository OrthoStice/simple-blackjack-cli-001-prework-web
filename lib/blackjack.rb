def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  numb = 1..11
  card = rand(numb)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(sum)
  prompt_user
  input = get_user_input
  case input
  when input = 'h'
    sum = sum + deal_card
  when input = 's'
    sum
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    sum = initial_round
  until sum > 21
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end






