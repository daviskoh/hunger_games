require 'spec_helper'

describe District do 
  let(:district) { District.new(number: 1) } 
  let(:citizen) { Citizen.new(type: "Tribute", name: "Bob", age: 12, sex: "male", alive: true, district_id: 1) }

  describe '::new' do 
    it 'has a number' do 
      district.number = nil
      expect(district).to have(1).errors_on(:number)
    end

    it 'has a number between 1 and 12' do 
      district.number = 13
      expect(district).to have(1).errors_on(:number)
    end

    it 'should have a unique number' do 
      should validate_uniqueness_of(:number)
    end

    it 'can have citizens' do 
      citizen.save
      district.citizens << citizen
      expect(district.citizens).to include(citizen)
    end
  end
end