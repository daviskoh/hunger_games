class Game < ActiveRecord::Base
  validates :number, presence: true, uniqueness: true
  has_many :tributes
  has_many :rounds
end