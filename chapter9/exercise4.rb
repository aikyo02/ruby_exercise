class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly     = 10  #  最初彼はおなかいっぱいです。
    @stuffInIntestine =  0  #  トイレはまだ大丈夫。(Bellyは胃、Intestineは腸です。)

    puts @name + ' は生まれました.'
  end

  def command
    command_list = ["feed", "walk", "putToBed", "toss", "rock"]
    puts "#{@name}に命令してください。可能な命令は"
    puts command_list
    puts "です。"

    comm = gets.chomp
    if command_list.include? comm
      send comm
    else
      puts "そんな命令はないようです。"
    end
  end

  def feed
    puts 'あなたは ' + @name + 'に食べ物を与えます.'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'あなたは ' + @name + 'をトイレに連れて行きます.'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'あなたは ' + @name + ' を寝かしつけます.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' はいびきをかいて, 部屋中煙だらけ.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' はゆっくり目を覚ます.'
    end
  end

  def toss
    puts 'あなたは ' + @name + ' を空中に投げ上げます.'
    puts '彼はキャハキャハ笑い, あなたの眉毛は焼け焦げた.'
    passageOfTime
  end

  def rock
    puts 'あなたは ' + @name + ' を優しく揺すります.'
    @asleep = true
    puts '彼は短くうとうと...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...でもやめるとすぐ起きちゃう.'
    end
  end

  private

  #  "private"というのは、ここで定義されているメソッドが
  #  オブジェクト内部のものであるという意味です。
  #  (あなたはドラゴンにえさを与えることはできますが、
  #  おなかがすいているかどうかを訊くことはできません。)

  def hungry?
    #  メソッドの名前は"?"で終わることができます。
    #  通常、メソッドがtrueかfalseのどちらかを返すときだけ、
    #  この名前を使います。このように:
    @stuffInBelly <= 2
  end

  def poopy?
    #うんちが出そう?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      #  食べたものは、胃から腸へ移動
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else  #  私たちのドラゴンは飢えました!
      if @asleep
        @asleep = false
        puts '彼は突然跳び起きます!'
      end
      puts @name + ' は飢え死にしそう!  死に物狂いの彼は"あなた"を食べてしまいました!'
      exit  #  プログラムを終了します。
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'おっと!  ' + @name + ' はやっちゃったようです...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts '彼は突然起きます!'
      end
      puts @name + 'のおなかはゴロゴロ言ってます...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts '彼は突然起きます!'
      end
      puts @name + ' はうんちをしたくて踊っています...'
    end
  end

end

pet = Dragon.new 'Norbert'
pet.command