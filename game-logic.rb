module FeedbackPins

  def feedback_pin(c, d, pin, ind, player_arr, comp_arr_dup)
    while c < 4
      if  player_arr[c] == comp_arr_dup[c]
        pin << "B"
        player_arr[c] = "B"
        comp_arr_dup[c] = "B"      
      end
      c += 1
    end
    
    
    while d < 4
    if comp_arr_dup.include?(player_arr[d]) && player_arr[d] != comp_arr_dup[d]
      pin << "W"
      ind = comp_arr_dup.find_index(player_arr[d])
      player_arr[d] = "W"
      comp_arr_dup[ind] = "W"
    end
    d += 1
    end
    puts "Feedback pin: #{pin.join}"
  end
  
end


module GamePlay

  def pin_feedback(c, d, pin, ind, player_arr1, player_arr, comp_arr_dup)
    player_arr1 = player_arr.dup
    player_arr
    pin = []
    c = 0
    d = 0
    while c < 4
      if  player_arr1[c] == comp_arr_dup[c]
        pin << "B"
        player_arr1[c] = "B"
        comp_arr_dup[c] = "B"      
      end
      c += 1
    end
    
    
    while d < 4
      if comp_arr_dup.include?(player_arr1[d]) && player_arr1[d] != comp_arr_dup[d]
        pin << "W"
        ind = comp_arr_dup.find_index(player_arr[d])
        player_arr1[d] = "W"
        comp_arr_dup[ind] = "W"
      end
    d += 1
    end
    puts "The feedback pin is #{pin.join}"
    pin
  end

  def ai_chance(num, possible_codes, possible_code_arr, possible_codes_dup,ai_code,pc_code, ai_arr, pin ,pin_dup, e,f, ind2, pin1 )
    for num in possible_codes
      possible_code_arr = num.to_s.split("").map{|num| num.to_i}
      ai_code = pc_code
      ai_arr = ai_code.to_s.split("").map{|num| num.to_i}
      pin_dup = []
      e = 0
      f = 0
      while e < 4
      if possible_code_arr [e] == ai_arr[e]
        pin_dup << "B"
        possible_code_arr [e] = "B"
        ai_arr[e] = "B"
      end
      e += 1
      end 
      
      while f < 4
        if ai_arr.include?(possible_code_arr[f]) && ai_arr[f] != possible_code_arr[f]
          pin_dup << "W"
          ind2 =  ai_arr.find_index(possible_code_arr[f])
          possible_code_arr[f] = "W"
          ai_arr[ind2] = "W"
        end
        f += 1
      end
      if pin != pin_dup
        possible_codes_dup.delete(num)
        possible_codes_dup
      end

      if pin == ["B","B","B","B" ]
        puts "GAME OVER! Computer has cracked your code"
        return ["B","B","B","B" ]
      end
    end
    possible_codes_dup
    pin
  end



end