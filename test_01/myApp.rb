num = gets.to_i

def minimum_times_shake_dice(num)
  go_grid_number = (num - 1).to_f
  (go_grid_number / 6).ceil
end

result = minimum_times_shake_dice(num)

puts result
