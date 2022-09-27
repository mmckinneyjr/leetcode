# @param {String} s
# @return {Integer}

def roman_to_int(s)
  num_s = s.upcase.split("")
  num = 0

  while num_s.size > 0
    case num_s[0]
    when "I"
      if num_s[1] == "V"
        num = num += 4
        num_s.slice!(0)
      elsif num_s[1] == "X"
        num = num += 9
        num_s.slice!(0)
      else
        num += 1
      end
    when "X"
      if num_s[1] == "L"
        num = num += 40
        num_s.slice!(0)
      elsif num_s[1] == "C"
        num = num += 90
        num_s.slice!(0)
      else
        num += 10
      end
    when "C"
      if num_s[1] == "D"
        num = num += 400
        num_s.slice!(0)
      elsif num_s[1] == "M"
        num = num += 900
        num_s.slice!(0)
      else
        num += 100
      end
    else
      num += 5 if num_s[0] == "V"
      num += 50 if num_s[0] == "L"
      num += 500 if num_s[0] == "D"
      num += 1000 if num_s[0] == "M"
    end
    num_s.slice!(0)
  end

  return num
end