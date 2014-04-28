require_relative '../chapter9/exercise3'

describe "chapter9" do
  describe "OrangeTree" do
    before do
      @tree = OrangeTree.new(100)
    end

    it "should respond hight" do
      expect(@tree.height).to eq(100)
    end

    it "should fruit in 5 years" do
      5.times { @tree.oneYearPasses }
      expect(@tree.countTheOranges).to eq(10)
    end

    it "should be piched" do
      5.times { @tree.oneYearPasses }
      @tree.pichAnOrange
      expect(@tree.countTheOranges).to eq(9)
    end

    it "should die" do
      5.times { @tree.oneYearPasses }
      @tree.die
      expect(@tree.countTheOranges).to eq(0)
    end
  end
  
end