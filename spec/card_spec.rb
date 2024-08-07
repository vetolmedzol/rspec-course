RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a correct rank and rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a correct suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    comparison = 'Spades'

    # custom error message below
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison}, but I got #{card.suit} instead!"
  end
end
