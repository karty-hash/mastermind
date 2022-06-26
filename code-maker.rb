require_relative "set-of-code.rb"
require_relative "game-logic.rb"

class CodeMaker
  include CodeSet
  include GamePlay
  def initialize
    @i = 1111
    @arr_i = []
    @possible_codes = [1111]
    @possible_codes_dup
    @player_num
    @player_arr = []
    @player_arr1 = @player_arr.dup
    @chance = 0
    @pc_code
    @pc_arr = []
    @comp_arr_dup 
    @c = 0
    @d = 0
    @pin = []
    @e 
    @f 
    @possible_code_arr = []
    @ai_code
    @ai_arr = []
    @pin_dup = []
    @d
    @ind2
    @chance = 0
    @num 
  end

  def set_of_possible_codes
    possible_codes(@i, @arr_i, @possible_codes)
  end

  def set_of_possible_codes_dup
    possible_codes_duplicate(set_of_possible_codes, @possible_codes_dup)
  end

  def player_code
    user_code(@player_num, set_of_possible_codes, @player_arr )
  end

  def comp_guess
    pc_guess(@chance, @pc_code, @possible_codes_dup)
  end

  def comp_ar
    pc_ar(@pc_arr, comp_guess, @comp_arr_dup)
  end

  def feedback_pin
    pin_feedback(@c, @d, @pin, @ind, @player_arr1, @player_arr, comp_ar)
  end 

  def pc_chance
    ai_chance(@num, set_of_possible_codes, @possible_code_arr, @possible_codes_dup,@ai_code,comp_guess, @ai_arr, feedback_pin, @pin_dup, @e,@f, @ind2, @pin )
  end

  def game
    @player_arr = player_code
    @possible_codes_dup = set_of_possible_codes_dup
    set_of_possible_codes
    while @chance < 12
      puts "\n"
      puts "Chance: #{@chance + 1}"
      if pc_chance == ["B","B","B","B" ]
        break
      end
      @chance += 1
    end
  end



end

