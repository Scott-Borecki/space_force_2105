require './lib/spacecraft'
require './lib/person'
require './lib/flotilla'

RSpec.describe Flotilla do

  before :each do

    @daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
    @seventh_flotilla =

    Flotilla.new({designation: 'Seventh Flotilla'})

    @kathy = Person.new('Kathy Chan', 10)
    @kathy.add_specialty(:astrophysics)
    @kathy.add_specialty(:quantum_mechanics)

    @polly = Person.new('Polly Parker', 8)
    @polly.add_specialty(:operations)
    @polly.add_specialty(:maintenance)

    @rover = Person.new('Rover Henriette', 1)
    @rover.add_specialty(:operations)
    @rover.add_specialty(:maintenance)

    @sampson = Person.new('Sampson Edwards', 7)
    @sampson.add_specialty(:astrophysics)
    @sampson.add_specialty(:quantum_mechanics)

  end

  describe 'Object Creation' do

    it 'exists' do
      expect(@seventh_flotilla).to be_a(Flotilla)
    end

    xit 'has readable attributes' do

    end

  end

  describe 'Object Methods' do

  end

end
