class Sponsor < Citizen
  has_many :sponsorships
  has_many :tributes, through: :sponsorships#, source: :citizen
end