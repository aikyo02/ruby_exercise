require_relative '../chapter5/exercise1'

describe "chapter5" do
  describe "shout" do
    it "should return the message with prefix and suffix" do
      ARGF.stub(:gets).and_return("明日は休ませてください")
      expect(shout).to eq(%|なにぃ?"明日は休ませてください"だとー!! おまえは首だ!!|)
    end
  end
end