class Tribute < Citizen
  validates :game_id, presence: true
  belongs_to :game

  has_many :sponsorships
  has_many :sponsors, through: :sponsorships#, source: :citizen

  def get_sponsor
    self.sponsors << Sponsor.order("random()").first
    self.save
  end

  def of_age?
    self.age > 11 && self.age < 19
  end
end