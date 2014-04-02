# 好きな数を入力してもらい、それに1を加えて、その結果を ベターな 数字として薦めるプログラムを書きましょう。
puts "好きな数字を入力してください。"
input = gets.chomp
if input =~ /^[0-9]+$/
  num = input.to_i  
else
  puts "数字だけを入力してくださいよ。"
  exit
end

puts "#{num + 1}の数字は好きですか？"