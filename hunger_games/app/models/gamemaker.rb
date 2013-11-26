class Gamemaker
  def start_game
    number = Game.last.nil? ? 1 : Game.last.number
    Game.create(number: number)

    District.all.each do |district|
      males = Tribute.where(sex: male)
      females = Tribute.where(sex: female)

      # .order("random()") sample at SQL level
    end    
  end

  private

  # Constraints
    # age 12-18
    # 1 male, 1 female per District
end