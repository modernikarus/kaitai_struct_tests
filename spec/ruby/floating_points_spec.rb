require 'floating_points'

RSpec.describe FloatingPoints do
  it 'parses test properly' do
    r = FloatingPoints.from_file('src/floating_points.bin')
    
    delta = 1e-6

    expect(r.single_value).to eq 0.5
    expect(r.single_value_be).to eq 0.5
    expect(r.double_value).to eq 0.25
    expect(r.double_value_be).to eq 0.25
    
    expect(r.approximate_value).to be_within(delta).of 1.2345
    
    expect(r.single_value_plus_int).to be_within(delta).of 1.5
    expect(r.single_value_plus_float).to be_within(delta).of 1.0
    expect(r.double_value_plus_float).to be_within(delta).of 0.3
  end
end
