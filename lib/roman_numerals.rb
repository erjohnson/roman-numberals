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
  numerals_array = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
  numbers_array = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
  input_array.each do |i|
    0.upto(12) do |z|
      while i >= numbers_array[z]
        res_array.push(numerals_array[z])
        i -= numbers_array[z]
      end
    end
  end
  res_array.join("")
end
