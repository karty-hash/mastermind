require_relative "intro.rb"
require_relative "code-maker.rb"
require_relative "code-breaker.rb"

class Game
  include Intro

  def initialize
    @choice
  end
  def start_game
    introduction
    puts "\n"

    puts "Enter 1 to play as code maker"
    puts "Enter 2 to play as code breaker"

    loop do
      @choice = gets.chomp.to_i
      if @choice == 1
        CodeMaker.new.game
        break
      elsif @choice == 2
        CodeBreaker.new.game
        break
      else
        puts "Invalid choice"
        next
      end
      
    end

  end

end

gm = Game.new
gm.start_game