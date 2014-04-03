
def englishNumber number
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

  hundredAndOver = [
    {str: "trillion", num: 1_000_000_000_000},
    {str: "billion" , num: 1_000_000_000},
    {str: "million" , num: 1_000_000},
    {str: "thousand", num: 1000},
    {str: "hundred" , num: 100},
  ]

  write = 0
  left = number

  # 百の位より上の文字を作成
  hundredAndOver.each do |numStrPair|
    write, left = left.divmod numStrPair[:num]
    if write > 0
      numString = numString + englishNumber(write) + " #{numStrPair[:str]} "
    end
  end

  # 十の位の文字を作成
  write = left/10          #  今度は十の桁です。
  left  = left - write*10  #  そして十の桁をひきます。

  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + '-'
    end
  end

  # 一の位の文字を作成
  write = left  #  ここで、一の桁を書き出します。
  left  = 0     #  この桁を引きます。(0になります。)

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end
