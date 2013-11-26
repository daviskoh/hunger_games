class Round < ActiveRecord::Base
  validates :number, :game_id, presence: true
  belongs_to :game
  has_many :tributes
end