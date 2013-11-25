class Sponsor < Citizen
  has_many :tributes, through: :sponsorships, source: :tribute  
end