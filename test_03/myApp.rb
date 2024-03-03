num = gets.chomp.split('')

def min_number(num)
  num_array = num.map(&:to_i).sort

  unique_num_array = num_array.uniq
  unique_num_array.delete(0) if unique_num_array.include?(0)
  min_num = unique_num_array.min

  if num_array[0] == 0
    select_index = num_array.index(min_num)
    num_array[0], num_array[select_index] = num_array[select_index], num_array[0]
  end

  num_array.join
end

result = min_number(num)

puts result