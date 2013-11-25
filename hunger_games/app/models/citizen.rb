class Citizen < ActiveRecord::Base
  validates :type, :name, :age, :sex, :alive, :district_id, presence: true
  validate :male_or_female
  belongs_to :district

  private

  def male_or_female
    return unless sex.present?

    errors.add(:sex, "Must be either male or female") unless self.sex.downcase == "male" || self.sex.downcase == "female"
  end
end