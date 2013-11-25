require 'spec_helper'

describe Citizen do 
  # before do
  #   $t = self
  # end

  let(:citizen) { Citizen.new }

  describe '::new' do 
    @attr = [:type, :name, :age, :sex, :alive, :district_id]

    @attr.each do |attri|
      it "isnt valid without #{attri}" do
        expect(citizen).to have(1).errors_on(attri)
      end
    end
  end


end