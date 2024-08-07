RSpec.describe HotChocolate do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end

  it 'confirms that an object can respond to a method with arguments' do
    expect(subject).to respond_to(:purchase).with(1).argument
  end
end
