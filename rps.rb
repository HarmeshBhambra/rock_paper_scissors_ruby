# Rock, Paper, Scissors

puts 'Your move: rock, paper, or scissors?'

choice = gets.chomp.downcase

win_count = 0
lose_count = 0

while choice != "quit"
  if choice == "rock" || choice == "paper" || choice == "scissors"
    rps = ["rock", "paper", "scissors"]

    random = rps.sample

    puts "Computer chooses: #{random}"

    if random == choice
      puts "It's a tie"

    elsif random == "rock" && choice == "paper"
      puts "You win!"
      win_count = win_count + 1

    elsif random == "rock" && choice == "scissors"
      puts "You lose!"
      lose_count = lose_count + 1

    elsif random == "paper" && choice == "rock"
      puts "You lose!"
      lose_count = lose_count + 1

    elsif random == "paper" && choice == "scissors"
      puts "You win!"
      win_count = win_count + 1

    elsif random == "scissors" && choice == "paper"
      puts "You lose!"
      lose_count = lose_count + 1

    elsif random == "scissors" && choice == "rock"
      puts "You win!"
      win_count = win_count + 1
    end

  else
    puts "That doesn't seem to be a valid move."

  end
  puts "Computer: #{lose_count}; You: #{win_count}"
  puts 'Your move: rock, paper, or scissors?'
  choice = gets.chomp.downcase

end
puts "BYE"



