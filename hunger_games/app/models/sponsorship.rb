class Sponsorship < ActiveRecord::Base
  belongs_to :tribute, class_name: "Citizen", foreign_key: "tribute_id" 
  belongs_to :sponsor, class_name: "Citizen", foreign_key: "sponsor_id"
end