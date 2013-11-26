require 'spec_helper'

describe Tribute do 
  # before do
  #   $t = self
  # end

  let(:tribute) { Tribute.new }
  let(:game) { Game.new(number: 1) }

  describe '::new' do 
    it 'has either volunteered or not' do 
      expect(tribute).to have(1).errors_on(:volunteer)
    end

    it 'is part of a game' do 
      expect(tribute).to have(1).errors_on(:game_id)

      game.save
      tribute.game_id = game.id
      expect(tribute.game).to_not be_nil
    end
  end
end