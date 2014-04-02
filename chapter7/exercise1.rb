
def sort(list)
  if list.length <= 1
    return list
  end

  pivot = list.shift
  small =[]
  big = []
  list.each do |elem|
    if (elem <=> pivot) < 1
      small << elem
    else
      big << elem
    end
  end

  small = sort(small) 
  big = sort(big)

  small << pivot
  return small + big
end


words = []
puts "英単語を入力してください。入力を終了したい場合は「end」を入力してください。"

loop do  
  input = gets.chomp
  if input == "end"
    break
  else
    words << input
  end
end

words = sort(words)

puts words

