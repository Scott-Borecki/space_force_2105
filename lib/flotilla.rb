class Flotilla

  attr_reader :name,
              :personnel,
              :ships

  def initialize(data)
    @name      = data[:designation]
    @personnel = []
    @ships     = []
  end

  def add_ship(ship)
    @ships << ship
  end

end
