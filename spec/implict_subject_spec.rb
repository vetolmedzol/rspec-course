RSpec.describe Hash do
  # let(:my_hash) { {} }
  # let(:subject) { Hash.new }

  it 'should start over empty' do
    expect(subject.length).to eq(0)
    subject[:something] = 'something'
    expect(subject.length).to eq(1)
  end

  it 'isolated between examples' do
    expect(subject.length).to eq(0)
  end
end
