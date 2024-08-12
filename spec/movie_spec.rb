RSpec.describe Movie do
  subject { described_class.new(stuntman) }
  let(:stuntman) do
    double('Mr. Danger', ready?: true,
                         act: 'Any string at all!',
                         fall_off_ladder: 'Yes, sure! I will do it!',
                         light_on_fire: true)
  end

  describe '#start_shooting method' do
    it 'expects an actor to do 3 actions' do
      # expect(stuntman).to receive(:act).and_return('Any string at all!').exactly(2).times
      # expect(stuntman).to receive(:act).and_return('Any string at all!').at_most(2).times
      # expect(stuntman).to receive(:act).and_return('Any string at all!').at_least(2).times
      # expect(stuntman).to receive(:fall_off_ladder).and_return('Yes, sure! I will do it!').exactly(1).times

      expect(stuntman).to receive(:ready?).and_return(true).once
      expect(stuntman).to receive(:act).and_return('Any string at all!').twice
      expect(stuntman).to receive(:light_on_fire).and_return(true).once
      subject.start_shooting
    end
  end
end
