require_relative "set-of-code.rb"
require_relative  "game-logic.rb"

class CodeBreaker
  include SetOfCodes
  include  FeedbackPins
  
  def initialize
    @i = 1111
    @arr_i = []
    @possible_codes = [1111]
    @comp_arr 
    @comp_arr_dup = @comp_arr.dup
    @comp_num
    @player_num 
    @player_arr = []
    @c = 0
    @d = 0
    @pin = []
    @ind
    @chance = 0
    @pin_dup= []
  end

  private
  def set_of_possible_codes
    possible_codes(@i, @arr_i, @possible_codes)
  end

  private
  def pc_code
    comp_code(@comp_arr)
  end

  private
  def pc_num
    comp_num(@comp_num, pc_code)
  end
  
  private
  def player_num
    player_code(@player_num, set_of_possible_codes, @player_arr)
  end

  private
  def pin_feedback
    feedback_pin(@c, @d, @pin, @ind,player_num, @comp_arr_dup)
  end

  public

  def game
    set_of_possible_codes
    @comp_arr = pc_code
    while @chance < 12
      @comp_arr_dup = @comp_arr.dup
      @pin = []
      puts "chance no: #{@chance+1}"
      pin_feedback
      puts "\n"
      @chance += 1
      
      if @pin == ["B", "B", "B", "B"]
        puts "Great! you have identified the code."
        break
      end

      if @chance == 12
        puts "GAME OVER! Computer wins"
        break
      end

    end
  end
end

