class Flotilla

  attr_reader :name,
              :personnel,
              :ships

  def initialize(data)
    @name      = data[:designation]
    @personnel = []
    @ships     = []
  end

end
