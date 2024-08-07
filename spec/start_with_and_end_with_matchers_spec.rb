RSpec.describe 'start_with_and_end_with_matchers' do
  describe 'caterpillar' do
    it 'should check for substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
      expect(subject).to end_with('lar')
    end

    it { is_expected.to start_with('cater') }
    it { is_expected.to end_with('pillar') }
  end

  describe [:a, :b, :c, :d] do
    it 'should check for elements at the beginning or end of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to end_with(:c, :d)
    end

    it { is_expected.to start_with(:a) }
    it { is_expected.to end_with(:d) }
    it { is_expected.not_to end_with(:a) }
  end
end
