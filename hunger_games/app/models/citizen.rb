class Citizen < ActiveRecord::Base
  validates :type, :name, :age, :sex, :alive, presence: true
end