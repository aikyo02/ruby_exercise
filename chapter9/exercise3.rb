class OrangeTree
  attr_accessor :height

  def initialize height
    @height = height
    @age = 0
    @orangeCount = 0
    @living = true
  end

  def oneYearPasses
    @age += 1
    if @living && @age > 4
      @orangeCount = (@age - 4) * 10
    end
  end

  def countTheOranges
    @orangeCount
  end

  def pichAnOrange
    if @orangeCount > 0
      @orangeCount -= 1
      puts "オレンジ美味しい。"
    else
      puts "オレンジがない......"
    end
  end

  def die
    @living = false
    @orangeCount = 0
  end
end


