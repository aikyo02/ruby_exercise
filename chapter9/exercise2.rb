def trans_num str
  if str =~ /^[0-9]+$/
    num = str.to_i
  else
    puts "数字で入力してください。"
    exit
  end
end

puts "生まれたのは何年ですか？"
birth_year = gets.chomp
birth_year = trans_num birth_year

puts "生まれたのは何月ですか？"
birth_month = gets.chomp
birth_month = trans_num birth_month

puts "生まれたのは何日ですか？"
birth_day = gets.chomp
birth_day = trans_num birth_day

now = Time.now
if now.month > birth_month || 
  (now.month == birth_month && now.day >= birth_day)

  age = now.year - birth_year
else
  age = now.year - birth_year - 1
end

puts "いままでの誕生日をお祝いします。"
1.upto(age) do |year|
  puts "#{birth_year + year}.#{birth_month}.#{birth_day}"
  puts "　　#{year}歳 おめでとう"
  puts "　　　　　｡｡☆†"
  puts "　　∧∧γ⌒⌒⌒ヽ"
  puts "　 (*^ヮ^)～～υＪ"
  puts "　 /　　つ―――┤"
  puts "　(＿＿ﾉ└―――┘"
end