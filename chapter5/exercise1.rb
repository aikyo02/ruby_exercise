SHOUT_PREFIX = 'なにぃ?'
SHOUT_SUFFIX = 'だとー!! おまえは首だ!!'

def shout
  puts "怒ったボス　何が望みだ？"
  hope = gets.chomp
  "#{SHOUT_PREFIX}\"#{hope}\"#{SHOUT_SUFFIX}"
end

puts shout
