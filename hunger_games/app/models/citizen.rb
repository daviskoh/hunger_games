class Citizen < ActiveRecord::Base
  validates :name, :age, :sex, :alive, :district_id, presence: true
  validate :male_or_female
  belongs_to :district
  
  belongs_to :game

  private

  def male_or_female
    return unless sex.present?

    errors.add(:sex, "Must be either male or female") unless self.sex.downcase == "male" || self.sex.downcase == "female"
  end

  def tribute_age?
    self.age > 11 || self.age < 19
  end
end