RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Python') }

  it 'should store the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'without argument' do
    let(:language) { ProgrammingLanguage.new }

    it 'should store the name of the language as Ruby' do
      expect(language.name).to eq('Ruby')
    end
  end
end
