def numerals_counter (input_num)
  str_length = 0
  if input_num.length < 4
    str_length = 4 - input_num.length
    1.upto(str_length) { input_num = "0" + input_num }
  end
  input_array = input_num.split("")
  0.upto(3) do |i|
    input_array[i] = input_array[i].to_i
  end
  input_array[0] = input_array[0] * 1000
  input_array[1] = input_array[1] * 100
  input_array[2] = input_array[2] * 10
  res_array = []
  num_hash = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  while input_array[0] >= 1000
    input_array[0] -= 1000
    res_array.push("M")
  end
  while input_array[1] >= 500
    if input_array[1] == 900
      input_array[1] -= 900
      res_array.push("CM")
    else
    input_array[1] -= 500
    res_array.push("D")
    end
  end
  while input_array[1] >= 100
    if input_array[1] == 400
      input_array[1] -= 400
      res_array.push("CD")
    else
    input_array[1] -= 100
    res_array.push("C")
    end
  end
  while input_array[2] >= 50
    if input_array[2] == 90
      input_array[2] -= 90
      res_array.push("XC")
    else
    input_array[2] -= 50
    res_array.push("L")
    end
  end
  while input_array[2] >= 10
    if input_array[2] == 40
      input_array[2] -= 40
      res_array.push("XL")
    else
    input_array[2] -= 10
    res_array.push("X")
    end
  end
  while input_array[3] >= 5
    if input_array[3] == 9
      input_array[3] -= 9
      res_array.push("IX")
    else
    input_array[3] -= 5
    res_array.push("V")
    end
  end
  while input_array[3] >= 1
    if input_array[3] == 4
      input_array[3] -= 4
      res_array.push("IV")
    else
    input_array[3] -= 1
    res_array.push("I")
    end
  end
  res_array.join("")
end
