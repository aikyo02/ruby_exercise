# 最初に姓、次に名前を聞いて、最後にフルネームに対してあいさつを するようなプログラムを書いてみましょう。
puts "苗字を入力してください。"
last_name = gets.chomp

puts "名前を入力してください。"
first_name = gets.chomp

puts "こんにちは、#{last_name} #{first_name} さん"
