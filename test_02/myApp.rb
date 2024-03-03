positions = gets.chomp.split('')

def make_reversi_array(positions)
  reversi = ['b','w']

  positions.each_with_index do |position, index|
    current_color = (index == 0 || index % 2 == 0 ) ? 'b' : 'w'

    case position
    when 'R' then
      left_side_color = reversi[reversi.length-1]
      reversi << current_color

      if left_side_color != current_color && reversi.count(current_color) >= 1
        start_index = reversi.index(current_color)
        modified_part = reversi[start_index..-1].map{|item| item != current_color ? current_color : item}
        reversi = reversi[0...start_index] + modified_part
      end

    when 'L' then
      right_side_color = reversi[0]
      reversi.unshift(current_color)

      if right_side_color != current_color && reversi.count(current_color) >= 1
        last_index = reversi.rindex(current_color)
        modified_part = reversi[0..last_index].map{|item| item !=  current_color ? current_color : item}
        reversi = modified_part + reversi[last_index+1..-1]
      end
    end
  end

  reversi
end

result = make_reversi_array(positions)
num_of_black = result.count('b')
num_of_white = result.count('w')

puts "#{num_of_black} #{num_of_white}"