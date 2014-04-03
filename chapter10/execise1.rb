def clock(&block)
  hour_24 = Time.now.hour

  # 0-23時を1-12時に変換
  if hour_24 % 12 == 0
    hour = 12
  else
    hour = hour_24 % 12
  end
  
  hour.times {yield}
end

count = 0
clock do
  count += 1
  puts "#{count}回目の呼び出し"
end
