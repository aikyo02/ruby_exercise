# 好きな数を入力してもらい、それに1を加えて、その結果を ベターな 数字として薦めるプログラムを書きましょう。
def better_number
  puts "好きな数字を入力してください。"
  input = gets.chomp
  if input =~ /^[0-9]+$/
    num = input.to_i  
  else
    puts "数字だけを入力してくださいよ。"
    exit
  end
  num + 1
end

def put_number
  puts "#{better_number}の数字は好きですか？"
end