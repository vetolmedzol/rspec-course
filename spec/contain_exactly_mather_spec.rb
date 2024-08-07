RSpec.describe 'contain_exactly_mather' do
  subject { [1, 2, 3] }

  describe 'long syntax form' do
    it 'should check for the presence of all elements' do
      expect(subject).to contain_exactly(1, 2, 3)
      expect(subject).to contain_exactly(3, 2, 1)
      expect(subject).to contain_exactly(3, 1, 2)
    end
  end

  it { is_expected.to contain_exactly(1, 2, 3) }
end
