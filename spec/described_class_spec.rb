RSpec.describe King do
  subject { described_class.new('Arthur') }

  let(:louis) { described_class.new('Louis') }

  it 'represent the great person' do
    expect(subject.name).to eq('Arthur')
    expect(louis.name).to eq('Louis')
  end
end
