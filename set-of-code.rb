module SetOfCodes

  def possible_codes(i, arr_i, possible_code)
    while i < 6666
      i += 1
      arr_i = i.to_s.split("").map{|num| num.to_i}
      if arr_i.include?(0)|| arr_i.include?(7) ||arr_i.include?(8)|| arr_i.include?(9)
        next
      else
        possible_code << i
      end
      arr_i = []
    end
     possible_code
  end 

  def comp_code(comp_arr)
    comp_arr = [rand(1..6), rand(1..6), rand(1..6),rand(1..6)]
    comp_arr
  end

  def comp_num(comp_num, pc_arr)
    comp_num = pc_arr.join.to_i
    comp_num
  end

  def player_code(player_num, possible_codes, player_arr)
    
    loop do
      puts "Please enter code"
      player_num = gets.chomp.to_i

      if possible_codes.include?(player_num)
        player_arr = player_num.to_s.split("").map{|num| num.to_i}
        break
      else
        puts "INVALID CODE"
        puts "\n"
        next
      end
    end

      player_num
      player_arr

  end
 
end

module CodeSet

  def possible_codes(i, arr_i, possible_codes)
    while i < 6666
      i += 1
      arr_i = i.to_s.split("").map{|num| num.to_i}
      if arr_i.include?(0)|| arr_i.include?(7) ||arr_i.include?(8)|| arr_i.include?(9)
        next
      else
        possible_codes << i
      end
      arr_i = []
    end
     possible_codes
  end

  def possible_codes_duplicate(possible_codes, possible_codes_dup)
    possible_codes_dup = possible_codes.dup.uniq
    possible_codes_dup
  end

  def user_code(player_num, possible_codes, player_arr)
    loop do
      puts "Please enter code"
      player_num = gets.chomp.to_i

      if possible_codes.include?(player_num)
        player_arr = player_num.to_s.split("").map{|num| num.to_i}
        break
      else
        puts "INVALID CODE"
        next
      end
    end
      print `clear`
      player_num
      player_arr
  end

  def pc_guess(chance, pc_code, possible_codes_dup)
    if chance == 0
      pc_code  = 1122
    else
      pc_code = possible_codes_dup[0]
    end
      p pc_code
      pc_code
  end

  def pc_ar(pc_arr, pc_guess, comp_arr_dup)
    pc_arr = pc_guess.to_s.split("").map{|num| num.to_i}
    comp_arr_dup = pc_arr.dup
    pc_arr
    comp_arr_dup
  end

end

