
bye_count = 0

until bye_count >= 3
  input = gets.chomp
  if input == "BYE"
    bye_count += 1
  elsif input =~ /^[A-Z]+$/
    puts "いやー、" + Random.rand(1930..1950).to_s + "年以来ないねー!"
    bye_count = 0
  else
    puts "は?! もっと大きな声で話しておくれ、坊や!"
    bye_count = 0
  end
end