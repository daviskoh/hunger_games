class Tribute < Citizen
  validates :game_id, presence: true
  has_many :sponsors, through: :sponsorships, source: :sponsor
  belongs_to :game
end