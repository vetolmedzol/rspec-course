RSpec.describe 'all matcher' do
  it 'allows to aggregate checks' do
    expect([5, 7, 9]).to all(be_odd)
    expect([4, 6, 8]).to all(be_even)
    expect([0, 0, 0]).to all(be_zero)
    expect([[], [], []]).to all(be_empty)
  end

  describe [5, 7, 9] do
    it { is_expected.to all be_odd }
    it { is_expected.to all(be < 10) }
  end
end
