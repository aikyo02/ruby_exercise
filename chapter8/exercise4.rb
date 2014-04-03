require_relative "exercise1_2"

9999.downto(0).each do |num|
  puts "#{englishNumber(num)} Bottles of beer on the wall"
  puts "#{englishNumber(num)} Bottles of beer" 
  puts "Take one down and pass it around"
end