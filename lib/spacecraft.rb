class Spacecraft

  attr_reader :name,
              :fuel

  def initialize(data)
    @name = data[:name]
    @fuel = data[:fuel]
  end

end
