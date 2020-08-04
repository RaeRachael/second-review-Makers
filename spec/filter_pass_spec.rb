require_relative '../lib/filter_pass.rb'

describe "#filter_pass" do
  describe 'default filter' do
    it "should return '[56]' no change to freq" do
      expect(filter_pass([56])).to eq ([56])
    end
    it "should return '[58]' no change to freq" do
      expect(filter_pass([58])).to eq ([58])
    end
    it "should make freq min value, 40, if less than 40" do
      expect(filter_pass([1])).to eq ([40])
    end
  end
end
