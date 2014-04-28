require_relative '../chapter10/execise1'
require_relative '../chapter10/exercise2_3'

describe "chaper10" do
  describe "clock" do
    it "should call a block" do
      time_now = Time.local(2014,4,28,15,0,0)
      Time.stub(:now).and_return(time_now)
      count = 0
      clock { count += 1 }
      expect(count).to eq(3)
    end
  end
end