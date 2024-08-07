RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'OUTER before content'
  end

  b efore(:example) do
    puts 'OUTER before example'
  end

  it 'does the basic math' do
    expect(1+1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts 'INNER before content'
    end

    before(:example) do
      puts 'INNER before example'
    end

    it 'does the more basic math' do
      expect(2+2).to eq(4)
    end

    it 'does the much more basic math' do
      expect(1*0).to eq(0)
    end
  end
end
