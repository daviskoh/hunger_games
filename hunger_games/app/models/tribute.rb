class Tribute < Citizen
  validates :volunteer, presence: true
  has_many :sponsors, through: :sponsorships, source: :sponsor
end