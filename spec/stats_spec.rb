require 'spec_helper'

INTERESTING_INTEGER_SET = [63, 60, 1, 51, 90, 69, 97, 29, 24, 62, 7, 43, 33, 79, 48, 37, 20, 94, 49, 21, 78, 28, 54, 0, 64, 18, 63, 37, 56, 56, 71, 37, 46, 33, 1, 85, 74, 99, 91, 16, 80, 32, 16, 18, 75, 55, 96, 95, 13, 37, 30, 48, 61, 33, 52, 2, 28, 36, 90, 44, 48, 59, 74, 54, 91, 21, 56, 39, 29, 32, 48, 9, 33, 60, 88, 55, 11, 84, 10, 80, 76, 68, 44, 44, 19, 16, 98, 39, 50, 65, 35, 45, 52, 1, 18, 63, 2, 87, 99, 20]

describe 'stats calculator' do
  context 'calculating #mean' do
    it 'returns the mean for an odd set' do
      expect(mean([1,2,3])).to be_within(0.1).of(2.0) 
    end

    it 'returns the mean for a sub-half t even set' do
      expect(mean([7,2,4,8])).to be_within(0.001).of(5.25) 
    end
  end

  context 'calculating #median' do
    it 'finds the median for an even number of elements' do
      expect(median([7,2,4,8])).to be_within(0.01).of(5.5) 
    end

    it 'finds the median for an odd number of elements' do
      expect(median([55, 96, 95, 13, 37])).to eq(55)
    end
  end

  context 'calculating #mode' do
    it 'calculates the mode' do
      expect(mode(INTERESTING_INTEGER_SET)).to eq(33)
    end
  end

  context 'calculating #standard_deviation' do
    it 'calculates the standard_deviation' do
      expect(standard_deviation(INTERESTING_INTEGER_SET)).to be_within(0.001).of(27.42)
    end
  end
end
