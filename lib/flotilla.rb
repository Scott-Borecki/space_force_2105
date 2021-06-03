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

  def add_personnel(personnel)
    @personnel << personnel
  end

  def recommend_personnel(spacecraft)
    @personnel.find_all do |person|
      person.specialties.find do |specialty|
        spacecraft.requirements.find do |requirement|
          requirement[specialty].is_a?(Integer) && requirement[specialty] <= person.experience
        end
      end
    end
  end

end
