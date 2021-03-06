require 'repeat_n_strz'

RSpec.describe RepeatNStrz do
  it 'parses test properly' do
    r = RepeatNStrz.from_file('src/repeat_n_strz.bin')

    expect(r.qty).to eq 2
    expect(r.lines).to eq ['foo', 'bar']
  end
end
