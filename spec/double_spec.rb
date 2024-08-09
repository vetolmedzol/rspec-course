RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    stuntman1 = double('Mr. Danger', fall_off_ladder: 'Ouch!', light_on_fire: true)

    expect(stuntman1.fall_off_ladder).to eq('Ouch!')
    expect(stuntman1.light_on_fire).to be_truthy

    stuntman2 = double('Mr. Danger')
    allow(stuntman2).to receive(:fall_off_ladder).and_return('Ouch!')
    expect(stuntman2.fall_off_ladder).to eq('Ouch!')

    stuntman3 = double('Mr. Danger')
    allow(stuntman3).to receive_messages(fall_off_ladder: 'Ouch!', light_on_fire: true)
    expect(stuntman3.fall_off_ladder).to eq('Ouch!')
    expect(stuntman3.light_on_fire).to be_truthy
  end
end
