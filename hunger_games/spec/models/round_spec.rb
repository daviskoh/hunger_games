require 'spec_helper'

describe Round do 
  let(:round) { Round.new }
  let(:game) { Game.new(number: 1) }

  describe '::new' do
    it 'has a number' do 
      expect(round).to have(1).errors_on(:number)
    end

    it 'has a game' do 
      expect(round).to have(1).errors_on(:game_id)

      game.save
      round.game_id = game.id
      round.save
      expect(round.game).to eq(game)
    end
  end
end