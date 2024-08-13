RSpec.describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    deck_klass = class_double(Deck, build: %w[Ace Queen]).as_stubbed_const

    expect(deck_klass).to receive(:build).once
    subject.start
    expect(subject.cards).to eq(%w[Ace Queen])
  end
end
