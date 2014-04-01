require "date"


# 1年は何時間でしょうか？
DAY_TO_HOURS = 24
LEAP_YEAR_DAYS = 366
NON_LEAP_YEAR_DAYS = 365
puts "1年は"
puts "#{NON_LEAP_YEAR_DAYS * DAY_TO_HOURS}時間(閏年以外)"
puts "#{LEAP_YEAR_DAYS * DAY_TO_HOURS}時間(閏年)"
puts "です。"


# 10年間は何分でしょうか？
HOUR_TO_MINUTES = 60

puts "10年間は"
puts "#{(NON_LEAP_YEAR_DAYS * 8 + LEAP_YEAR_DAYS * 2) * DAY_TO_HOURS * HOUR_TO_MINUTES}分(閏年2回)"
puts "#{(NON_LEAP_YEAR_DAYS * 7 + LEAP_YEAR_DAYS * 3) * DAY_TO_HOURS * HOUR_TO_MINUTES}分(閏年3回)"
puts "です。"


# あなたが生まれてから今日まで何秒たっているでしょうか?
printf("生まれてから%d秒たっています。\n", Time.now - Time.new(1987,10,1))


# あなたは一生のうちいくつのチョコレートを食べたいですか? 
LIFE_EXPECTANCY = 75
CHOCOLATE_PER_DAY = 0.2 # 1日あたりに食べるチョコレートの個数
life_exp_day = (Date.new(1987+LIFE_EXPECTANCY, 10, 1) - Date.new(1987, 10, 1)).to_i
puts "#{(life_exp_day * CHOCOLATE_PER_DAY).round}個のチョコレートを食べたいです。"


# 私が生まれてから10億3400万秒 たっているとしたら、私は今何歳でしょう?
birthday = (Time.now - 1034_000_000).to_date
today = Date.today
age = today.year - birthday.year

if today.month > birthday.month || 
  (today.month == birthday.month && today.day >= birthday.day)

  puts "#{age}歳"
else
  puts "#{age - 1}歳"
end
