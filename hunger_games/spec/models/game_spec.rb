require 'spec_helper'

#has 6 zones (remove attribute)

describe Game do 
  before do 
    $t = self
  end

  let(:game) { Game.new }
  let(:round) { Round.new(number: 1) }
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
  end

  test '#tributes', 'can have tributes' do 
    $t.game.tributes << $t.tribute
    $t.expect($t.game.tributes.include?($t.tribute)).to $t.be_true
  end

  test '#rounds', 'can have rounds' do 
    $t.round.save
    $t.game.rounds << $t.round
    $t.game.save
    $t.expect($t.game.rounds.include?($t.round)).to $t.be_true
  end
end