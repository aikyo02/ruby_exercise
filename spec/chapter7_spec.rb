require_relative '../chapter7/exercise1.rb'

describe "chapter7" do
  describe "sort" do
    it "should sort by alphabet order" do
      list = [
        "arst",
        "alias",
        "qwfp",
        "neio"
      ]
      expected = [
        "alias",
        "arst",
        "neio",
        "qwfp"
      ]
      expect(sort(list)).to eq(expected)
    end
  end
end