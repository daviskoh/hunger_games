class Tribute < Citizen
  validates :volunteer, :game_id, presence: true
  has_many :sponsors, through: :sponsorships, source: :sponsor
  belongs_to :game

  def right_age?
    self.age > 11 || self.age < 19
  end
end