require 'spec_helper'

describe Game do 
  let(:game) { Game.new }
  let(:tribute) { Tribute.new(type: "Tribute", name: "Bob", age: 12, sex: "male", alive: true, district_id: 1, volunteer: false) }

  describe '::new' do 
    it 'has a number' do 
      expect(game).to have(1).errors_on(:number)
    end

    it 'has a unique number' do 
      Game.create(number: 1)
      game.number = 1

      expect(game).to have(1).errors_on(:number)
    end

    it 'can have tributes' do 
      game.tributes << tribute
      expect(game.tributes).to include(tribute)
    end
  end
end