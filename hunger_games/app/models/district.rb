class District < ActiveRecord::Base
  validates :number, presence: true, uniqueness: true
  validate :between_one_and_twelve
  has_many :citizens

  private

  def between_one_and_twelve
    return unless number.present?

    errors.add(:number, "Needs to be between 1 and 12 inclusive") if self.number < 1 || self.number > 12
  end
end