require './lib/calculation'

RSpec.describe Calculation do
  describe 'Tests' do
    let(:array_of_string) { ['a, 1342', 'b, 12213', 'c, 1293', 'd, 4321', 'e, -1423', 'f, -321', 'g, 0'] }
    let(:search_max) { Calculation.run(1, array_of_string) }
    let(:search_min) { Calculation.run(2, array_of_string) }
    let(:search_mean) { Calculation.run(3, array_of_string) }
    let(:search_dispersion) { Calculation.run(4, array_of_string) }

    context 'search max' do
      it { expect(search_max).to eq('b, 12213') }
    end

    context 'search min' do
      it { expect(search_min).to eq('e, -1423') }
    end

    context 'search mean' do
      it { expect(search_mean).to eq(2489.285714285714) }
    end

    context 'search dispersion' do
      it { expect(search_dispersion).to eq(21_675_564.904761903) }
    end
  end
end
