require 'spec_helper'

describe Round do 
  let(:round) { Round.new }
  let(:game) { Game.new(number: 1) }
  let(:tribute) { Tribute.new(type: "Tribute", name: "Bob", age: 12, sex: "male", alive: true, district_id: 1, volunteer: false) }

  describe '::new' do
    before do 
      # $t = self
      game.save
    end

    it 'has a number' do 
      expect(round).to have(1).errors_on(:number)
    end

    it 'has a game' do 
      expect(round).to have(1).errors_on(:game_id)

      round.game_id = game.id
      round.save
      expect(round.game).to eq(game)
    end
  end

  # test '#tributes', 'can have many tributes' do 
  #   $t.tribute.game_id = $t.game.id
  #   $t.round.tributes << $t.tribute

  #   $t.expect($t.round.tributes.include?($t.tribute)).to $t.be_true
  # end

  describe '#tributes' do 
    it 'can have many tributes' do 
      tribute.game_id = game.id
      round.tributes << tribute

      expect(round.tributes.include?(tribute)).to be_true
    end
  end
end