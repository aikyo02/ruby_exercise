require_relative '../chapter6/exercise4.rb'

describe "chapter6" do
  describe "leap_years" do
    it "should return leap years" do
      expect(leap_years(2000, 2009)).to eq("2000年、2004年、2008年")
    end
  end
end