RSpec.describe 'satisfy matcher' do
  # subject { 'racer' }
  subject { 'racecar' }

  it 'is a palindrome' do
    is_expected.to(satisfy { |value| value == value.reverse })
  end

  it 'can accept a custom error message' do
    expect(subject).to satisfy('be a palindrome') { |value| value == value.reverse }
  end
end
