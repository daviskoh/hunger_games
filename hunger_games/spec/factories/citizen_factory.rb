FactoryGirl.define do
  # create male and female citizens
  @sex = "male"

  factory :citizen do
    age         16
    name        "Katniss Everdeen"
    sex         @sex
    alive       true
    district
  end

  @sex = @sex == "male" ? "female" : "male"
end