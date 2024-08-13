RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(sleep_hello: 'Hello!', b: 20)

      expect(person.sleep_hello).to eq('Hello!')
    end
  end

  describe 'instance double' do
    it 'can only implement methods that are defined on the class' do
      # person = instance_double(Person, sleep_hello: 'Hello!') It works only without args
      person = instance_double(described_class)
      allow(person).to receive(:sleep_hello).with(3).and_return('Hello!')

      expect(person.sleep_hello(3)).to eq('Hello!')
    end
  end
end
