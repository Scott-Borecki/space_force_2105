require './lib/spacecraft'
require './lib/person'
require './lib/flotilla'

RSpec.describe Flotilla do

  before :each do

    @daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
    @daedalus.add_requirement({astrophysics: 6})
    @daedalus.add_requirement({quantum_mechanics: 3})

    @seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

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

    it 'has readable attributes' do
      expect(@seventh_flotilla.name).to eq('Seventh Flotilla')
      expect(@seventh_flotilla.personnel).to eq([])
      expect(@seventh_flotilla.ships).to eq([])
    end

  end

  describe 'Object Methods' do

    it 'can add a ship' do
      @seventh_flotilla.add_ship(@daedalus)
      expect(@seventh_flotilla.ships).to eq([@daedalus])
    end

    it 'can add personnel' do
      @seventh_flotilla.add_personnel(@kathy)
      @seventh_flotilla.add_personnel(@polly)
      @seventh_flotilla.add_personnel(@rover)
      @seventh_flotilla.add_personnel(@sampson)
      expected = [@kathy, @polly, @rover, @sampson]
      expect(@seventh_flotilla.personnel).to eq(expected)
    end

    it 'can recommend personnel' do
      @seventh_flotilla.add_personnel(@kathy)
      @seventh_flotilla.add_personnel(@polly)
      @seventh_flotilla.add_personnel(@rover)
      @seventh_flotilla.add_personnel(@sampson)
      @seventh_flotilla.add_ship(@daedalus)
      expect = @seventh_flotilla.recommend_personnel(@daedalus)
      expected = [@kathy, @sampson]
      expect(expect).to eq(expected)
    end

  end

end
