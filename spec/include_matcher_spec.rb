RSpec.describe 'include_matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).not_to include('HOT')
      expect(subject).to include('chocolate')
    end

    it { is_expected.to include('late') }
  end

  describe([10, 20, 30]) do
    it 'checks for inclusion in the array, regardless of order' do
      expect(subject).to include(10)
      expect(subject).to include(30, 10)
    end

    it { is_expected.to include(30, 10, 20) }
  end

  describe({ a: 2, b: 4 }) do
    it 'checks for the key existence' do
      expect(subject).to include(:a)
      expect(subject).to include(:b, :a)
    end

    it 'checks for the key-value pair existence' do
      expect(subject).to include(a: 2)
      expect(subject).to include(b: 4, a: 2)
    end

    it { is_expected.to include(:a) }
    it { is_expected.to include(b: 4) }
  end
end
