class Gamemaker
  def start_game
    number = Game.last.nil? ? 1 : Game.last.number + 1
    Game.create(number: number)

    reap

    current_game.save 
  end

  private

  def get_tribute(district_id, sex)
    candidates = Citizen.where("district_id = '#{district_id}' AND sex = '#{sex}' AND (age > 11 AND age < 19) AND type IS NULL")
    # pick random male from district
    candidate = candidates.order("random()").first #sample at SQL level
    
    # turn into tribute
    candidate.type = "Tribute"
    candidate.save

    current_game.tributes << Tribute.find(candidate.id)
    current_game.save
  end

  def reap
    District.all.each do |district|
      ["male", "female"].each do |sex|
        get_tribute(district.id, sex)
      end
    end
  end

  def current_game
    Game.last
  end
end