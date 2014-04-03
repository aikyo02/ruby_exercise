
def weddingNumber number
  if number < 0  #  負の数は不可です。
    return '負でない数を入力してください.'
  end
  if number == 0
    return 'zero'
  end


  numString = ''  

  onesPlace = ['one',     'two',       'three',    'four',     'five',
   'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
   'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
   'sixteen', 'seventeen', 'eighteen', 'nineteen']

  # 百の位の文字を作成
    write, left = number.divmod 100
    if write > 0
      numString = numString + weddingNumber(write) + "hundred and "
    end

  # 十の位の文字を作成
  write = left/10          #  今度は十の桁です。
  left  = left - write*10  #  そして十の桁をひきます。

  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + "#{teenagers[left-1]} "
      left = 0
    else
      numString = numString + "#{tensPlace[write-1]} and "
    end
  end

  # 一の位の文字を作成
  write = left  #  ここで、一の桁を書き出します。
  left  = 0     #  この桁を引きます。(0になります。)

  if write > 0
    numString = numString + "#{onesPlace[write-1]} "
  end

  numString
end

puts weddingNumber(1972)
puts weddingNumber(123456789123456789)