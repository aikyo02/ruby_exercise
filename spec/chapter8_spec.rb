require_relative '../chapter8/exercise1_2'
require_relative '../chapter8/exercise3'

describe "chapter8" do
  describe "englishNumber" do
    it "should return correct English when an argument is big number" do
      expected = "one hundred twenty-three trillion four hundred fifty-six billion \
seven hundred eighty-nine million one hundred twenty-three thousand four hundred fifty-six"

      expect(englishNumber(123_456_789_123_456)).to eq(expected)
    end

    it "should retern zero when an argument is 0" do
      expect(englishNumber(0)).to eq("zero") 
    end

    it "should retern error when an argument is negative number" do
      expect(englishNumber(-1)).to eq("負でない数を入力してください.")
    end
  end

  describe "weddingNumber" do
    it "should return correct Wedding English when an argument is big number" do
      expected = "twelve hundred and thirty and four hundred and fifty and six "
      expect(weddingNumber(123456)).to eq(expected)
    end
  end
end