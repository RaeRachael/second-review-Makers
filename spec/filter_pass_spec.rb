require_relative '../lib/filter_pass.rb'

describe "#filter_pass" do
  context "defualt filters used" do
    describe 'single frequency' do
      it "should return '[56]' no change to freq" do
        expect(filter_pass([56])).to eq ([56])
      end
      it "should return '[58]' no change to freq" do
        expect(filter_pass([58])).to eq ([58])
      end
      it "should make freq min value, 40, if less than 40" do
        expect(filter_pass([1])).to eq ([40])
      end
      it "should make freq max value, 1000, if more than 1000" do
        expect(filter_pass([1001])).to eq ([1000])
      end
    end
    describe 'can deal with more than one elemnet' do
      it "should return '[40, 56]' for '[1, 56]'" do
        expect(filter_pass([1, 56])).to eq ([40, 56])
      end
    end
  end

  context "specified filters" do
    describe "lower filter" do
      it "should use the low filter value given" do
        expect(filter_pass([1], 1000, 2)).to eq ([2])
      end
    end
    describe "upper filter" do
      it "should use the upper filter value given" do
        expect(filter_pass([2001], 2000, 40)).to eq ([2000])
      end
    end
  end
end
