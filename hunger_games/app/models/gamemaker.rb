class Gamemaker
  def start_game
    number = Game.last.nil? ? 1 : Game.last.number
    game = Game.create(number: number)

        
  end

  def reap
    District.all.each do |district|
      males = Citizen.where(sex: male)
      male = males.order("random()") sample at SQL level

      females = Citizen.where(sex: female)
    end
  end

  # Constraints
    # age 12-18
    # 1 male, 1 female per District
end