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

  def requirement_types
    @requirements.flat_map do |requirement|
      requirement.keys
    end
  end

end
