require './lib/spacecraft'
require './lib/person'

RSpec.describe Spacecraft do

  describe 'Object Creation' do

    it 'exists' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
      expect(daedalus).to be_a(Spacecraft)
    end

  end

  describe 'Object Methods' do

  end

end
