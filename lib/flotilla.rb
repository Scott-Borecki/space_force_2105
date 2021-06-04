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
          requirement[specialty].is_a?(Integer) &&
          person.experience >= requirement[specialty]
        end
      end
    end

    # @personnel.each do |person|
    #   spacecraft.requirements.each do |req|
    #     person.specialties.any? do |spec|
    #       people << person if req.key?(spec) &&
    #       person.experience >= req[spec]
    #     end
    #   end
    # end

  end

  def personnel_by_ship
    @ships.each_with_object({}) do |ship, hash|
      hash[ship] = recommend_personnel(ship)
    end
  end

  def requirements_staffed?(ship)
    ship.requirements.all? do |requirement|
      recommend_personnel(ship).any? do |person|
        person.specialties.include?(requirement.keys[0]) &&
        person.experience >= requirement.values[0]
      end
    end
  end

  def ready_ships(fuel)
    @ships.find_all do |ship|
      requirements_staffed?(ship) &&
      ship.fuel >= fuel
    end
  end
end
