class Citizen < ActiveRecord::Base
  validates :type, :name, :age, :sex, :alive, :district_id, presence: true
end