require_relative '../chapter4/exercise01'
require_relative '../chapter4/exercise02'

describe "chapter4" do
  describe "full_name" do
    it "should return first name and last name" do
      ARGF.stub(:gets).and_return("名前")
      expect(full_name).to eq("名前 名前")
    end
  end

  describe 'better_number' do
    it "should return input number + 1" do
      ARGF.stub(:gets).and_return("13")
      expect(better_number).to eq(14)
    end
  end
end