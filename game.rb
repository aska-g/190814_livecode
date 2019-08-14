# set allowed options
allowed = ['rock', 'paper', 'scissors']

# user chooses their option
puts "Chose an option: rock, paper or scissors. Type 'q' to quit."
user = gets.chomp.downcase

until user == 'q'
  # computer chooses a random option
  computer = allowed.sample
  # check that user typed allowed option
  until (allowed.include?(user)) || user == 'q'
    puts "Input not allowed, try again."
    user = gets.chomp.downcase
  end

  # compare user choice with computer choice
  # display the result
  if user == computer
    puts "It's a draw"
  elsif (user == 'rock' && computer == 'paper') ||
    (user == 'paper' && computer == 'scissors') ||
    (user == 'scissors' && computer == 'rock')
    puts "Computer: #{computer}. You are a big Looser!!"
  else
    puts "Computer: #{computer}. You won!"
  end
  puts "Chose an option: rock, paper or scissors. Type 'q' to quit."
  user = gets.chomp.downcase
end
