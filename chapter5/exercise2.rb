lineWidth = 40
puts "目次".center lineWidth

index = [
  {title: "1章:  数 ", page: "p. 1"},
  {title: "2章:  文字", page: "p. 72"},
  {title: "3章:  変数", page: "p. 118"},
]

halfWidth = lineWidth / 2
index.each do |line|
  puts line[:title].ljust(halfWidth) + line[:page].rjust(halfWidth)
end