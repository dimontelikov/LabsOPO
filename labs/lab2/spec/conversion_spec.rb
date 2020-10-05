require './lib/calculation'

RSpec.describe Calculation do
  describe 'Tests' do
    array_of_string = ['a, 1342', 'b, 12213', 'c, 1293', 'd, 4321', 'e, -1423']

    context 'search max' do
      it { expect(Calculation.search_max(array_of_string)).to eq('b, 12213') }
    end

    context 'search min' do
      it { expect(Calculation.search_min(array_of_string)).to eq('e, -1423') }
    end

    context 'search mean' do
      it { expect(Calculation.search_mean(array_of_string)).to eq(3549.2) }
    end

    context 'search dispersion' do
      it { expect(Calculation.search_corrected_sample_variance(array_of_string)).to eq(27_585_512.199999996) }
    end
  end
end
