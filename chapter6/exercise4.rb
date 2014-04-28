def leap_years(first, last)
  result = ""
  first.upto(last) do |year|
    if year % 400 == 0
      result += "#{year}年、"
    elsif year % 100 == 0
      next
    elsif year % 4 == 0
      result += "#{year}年、"
    end
  end
  result[0..-2]
end

puts "開始の年を入力してください。"
first = gets.chomp.to_i

puts "終わりの年を入力してください。"
last = gets.chomp.to_i

puts "閏年は#{leap_years(first, last)}です。"
