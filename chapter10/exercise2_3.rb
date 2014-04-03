$stack_count = 0

def log(block_title, &block)
  start_str =  %!開始 "#{block_title}"...!
  indent = "  " * $stack_count
  puts indent + start_str

  $stack_count += 1
  ret = yield
  $stack_count -= 1

  end_str =  %!..."#{block_title}"終了, 返り値は#{ret}!
  indent = "  " * $stack_count
  puts indent + end_str
end

log("外ブロック") do
  log("ある小さなブロック") do
    log("ちっちゃなブロック") {"lots of love"}
    42
  end
  log("もう一つのブロック") {"I love Indian food!"}
  true
end