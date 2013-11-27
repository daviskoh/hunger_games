class Tribute < Citizen
  validates :game_id, presence: true
  belongs_to :game

  has_many :sponsorships
  has_many :sponsors, through: :sponsorships#, source: :citizen

  def get_sponsor

  end
end