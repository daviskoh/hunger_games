require 'spec_helper'

describe Citizen do 
  # before do
  #   $t = self
  # end

  let(:citizen) { Citizen.new(type: "Tribute", name: "Bob", age: 12, sex: "male", alive: true, district_id: 1) }
  let(:district) { District.new(number: 1) }

  describe '::new' do 
    @attr = [:type, :name, :age, :sex, :alive, :district_id]

    @attr.each do |attri|
      it "isnt valid without #{attri}" do
        citizen[attri] = nil
        expect(citizen).to have(1).errors_on(attri)
      end
    end

    it 'has a district' do 
      district.save!
      citizen.district_id = district.id

      expect(citizen.district).to_not be_nil
    end

    it 'must be either male or female' do 
      citizen.sex = "steve"
      expect(citizen).to have(1).errors_on(:sex)
    end
  end


end