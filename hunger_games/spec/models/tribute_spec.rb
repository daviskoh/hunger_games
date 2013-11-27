require 'spec_helper'

describe Tribute do 
  let(:tribute) { Tribute.new }
  let(:game) { Game.new(number: 1) }
  let(:district) { District.new(number: 1) }
  let(:citizen) { Citizen.new(name: "Steve", age: 12, sex: "male", alive: true, district_id: district.id) }

  describe '::new' do 
    it 'is part of a game' do 
      expect(tribute).to have(1).errors_on(:game_id)

      game.save
      tribute.game_id = game.id
      expect(tribute.game).to_not be_nil
    end
  end

  describe '#get_sponsor' do
    before do 
      district.save
      game.save

      tribute.update(name: "Bob", age: 12, sex: "male", alive: true, district_id: district.id, game_id: game.id)
      tribute.save

      citizen.type = "Sponsor"
      citizen.save
    end

    it 'can get assigned a sponsor' do 
      tribute.get_sponsor
      expect(tribute).to have(1).sponsors
    end
  end
end