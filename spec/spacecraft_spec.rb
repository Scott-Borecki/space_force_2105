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
    end

  end

  describe 'Object Methods' do

  end

end
