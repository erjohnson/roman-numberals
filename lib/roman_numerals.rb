def numerals_counter (input_num)

  num_array = [1, 5, 10, 50, 100, 500, 1000].reverse

  char_array = ["I","V","X","L","C","D","M"].reverse

  res_array = []

  i = 0

  num_hash = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  char_array.each do
    while input_num >= num_array[i]
      input_num -= num_array[i]
      res_array.push(char_array[i])
    end
    i+=1
  end
  res_array.join("")
end
