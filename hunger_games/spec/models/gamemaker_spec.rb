require 'spec_helper'

describe Gamemaker do 
  let(:gamemaker) { Gamemaker.new }

  describe '::new' do
    it 'can be created' do 
      expect(gamemaker).to_not be_nil
    end
  end

  describe '#start_game' do 
    before do 
      # create factory, 12 districts
      # create factory, 12 males, 12 females
      gamemaker.start_game
    end

    it 'can start a game' do 
      expect(Game.all.count).to eq(1)
    end

    it 'can reap' do 
      gamemaker.reap
      expect(Game.last).to have(24).tributes
    end
  end
end