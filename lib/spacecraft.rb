class Spacecraft

  attr_reader :name,
              :fuel,
              :requirements

  def initialize(data)
    @name         = data[:name]
    @fuel         = data[:fuel]
    @requirements = []
  end

  def add_requirement(requirement)
    @requirements << requirement
  end

end
