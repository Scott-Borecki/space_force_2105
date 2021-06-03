require './lib/spacecraft'
require './lib/person'

RSpec.describe Person do

  before :each do
  @kathy = Person.new('Kathy Chan', 10)
  end

  describe 'Object Creation' do

    it 'exists' do
      expect(@kathy).to be_a(Person)
    end

    it 'has readable attributes' do
      expect(@kathy.name).to eq('Kathy Chan')
      expect(@kathy.experience).to eq(10)
      expect(@kathy.specialties).to eq([])
    end

  end

  describe 'Object Methods' do

  end

end
