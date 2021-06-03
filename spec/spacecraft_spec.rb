require './lib/spacecraft'
require './lib/person'

RSpec.describe Spacecraft do

  before :each do
  @daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
  end

  describe 'Object Creation' do

    it 'exists' do
      expect(@daedalus).to be_a(Spacecraft)
    end

    it 'has readable attributes' do
      expect(@daedalus.name).to eq('Daedalus')
      expect(@daedalus.fuel).to eq(400)
      expect(@daedalus.requirements).to eq([])
    end

  end

  describe 'Object Methods' do

    it 'can add requirements' do
      @daedalus.add_requirement({astrophysics: 6})
      @daedalus.add_requirement({quantum_mechanics: 3})
      expected = [{astrophysics: 6}, {quantum_mechanics: 3}]
      expect(@daedalus.requirements).to eq(expected)
    end

    it 'can create array requirement types' do
      @daedalus.add_requirement({astrophysics: 6})
      @daedalus.add_requirement({quantum_mechanics: 3})
      expected = [:astrophysics, :quantum_mechanics]
      expect(@daedalus.requirement_types).to eq(expected)
    end

  end

end
