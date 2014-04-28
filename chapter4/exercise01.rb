# 最初に姓、次に名前を聞いて、最後にフルネームに対してあいさつを するようなプログラムを書いてみましょう。
def full_name
  puts "苗字を入力してください。"
  last_name = gets.chomp

  puts "名前を入力してください。"
  first_name = gets.chomp

  "#{last_name} #{first_name}"
end

def put_name
  puts "こんにちは、#{full_name} さん"
end
