RSpec.describe 'have_attributes matcher' do
  describe ProfessionalWrestler.new('Stone Cold Steve Ostin', 'Stunner') do
    it 'checks for object attributes and proper values' do
      expect(subject).to have_attributes(name: 'Stone Cold Steve Ostin')
      expect(subject).to have_attributes(name: 'Stone Cold Steve Ostin', finishing_move: 'Stunner')
    end

    it { is_expected.to have_attributes(name: 'Stone Cold Steve Ostin', finishing_move: 'Stunner') }
  end
end
