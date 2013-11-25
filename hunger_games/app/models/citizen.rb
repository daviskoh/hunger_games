class Citizen < ActiveRecord::Base
  validates :type, :name, :age, :sex, :volunteer, :alive, presence: true
end