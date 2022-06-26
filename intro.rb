module  Intro
  def introduction 
    puts "Hi! Welcome to mastermind."
    puts "\n"
    puts "1. This mastermind game is a User vs Computer game played in the Terminal."
    puts "2. One of the players will be the Code Maker and the other will be the Code Breaker."
    puts "3. The code maker will create a 4 digit Secret Code, which will contain numbers between 1 to 6.The numbers can be repeated."
    puts "4. The code breaker needs to guess the code maker's secret code within 12 guesses."
    puts "\n"
    puts "Feedback pins: "
    puts "1. Feedback pins will contain the letter 'B' if the code breaker's guess includes a number from the Code Maker's code and also is in the same place as the Code Maker's code."
    puts "2. Feedback pins  will contain the letter 'W' if the code breaker's guess includes a number from the Code Maker's code but in the wrong place"
    puts "3. No Feedback pins will be awarded if both guess and secret code do not have any numbers in common."
  end
  
end