require './lib/conversion'

RSpec.describe Conversion do
  it 'Conversion С in С' do
    expect(Conversion.run_conversion(0, 'C', 'C')).to eq(0)
  end
  it 'Conversion С in F' do
    expect(Conversion.run_conversion(0, 'C', 'F')).to eq(32)
  end
  it 'Conversion С in F' do
    expect(Conversion.run_conversion(32.0, 'C', 'F')).to eq(89.6)
  end
  it 'Conversion K in C' do
    expect(Conversion.run_conversion(273.15, 'K', 'C')).to eq(0)
  end
  it 'Conversion K in K' do
    expect(Conversion.run_conversion(273.15, 'K', 'K')).to eq(273.15)
  end
  it 'Conversion K in F' do
    expect(Conversion.run_conversion(0, 'K', 'F')).to eq(-459.67)
  end
  it 'Conversion F in C' do
    expect(Conversion.run_conversion(0, 'F', 'C')).to eq(-17.77777777777778)
  end
end
