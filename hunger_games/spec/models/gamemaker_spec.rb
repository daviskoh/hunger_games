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
      gamemaker.start_game
    end

    it 'can start a game' do 
      expect(Game.all.count).to eq(1)
    end

    it 'can reap' do 

    end
  end
end