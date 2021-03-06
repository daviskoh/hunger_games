require 'spec_helper'

describe Gamemaker do 
  let(:gamemaker) { Gamemaker.new }

  describe '::new' do
    it 'can be created' do 
      expect(gamemaker).to_not be_nil
    end
  end

  describe '#start_game' do 
    let(:districts) { [] }

    before do 
      (1..12).each do |n|
        # create district
        districts << District.new(number: n)
        districts[n - 1].save

        # add a male and female citizen to each district
        ["male", "female"].each do |sex|
          districts[n - 1].citizens << Citizen.create(name: "#{sex + '-' + n.to_s}", age: 12, sex: sex, alive: true, district_id: districts[n - 1].id)
        end

        districts[n - 1].save
      end
      
      gamemaker.start_game
    end

    it 'can start a game' do 
      expect(Game.all.count).to eq(1)
    end

    it 'can reap' do
      expect(Game.last).to have(24).tributes
    end

    it 'does not reap the same tribute twice' do 
      # check all tributes to make sure non duplicate
      Game.last.tributes.each do |trib|
        trib_list = Game.last.tributes.where(id: trib.id)
        expect(trib_list.count).to eq(1)
      end
    end

    it 'only reaps from citizens between ages of 12 and 18 inclusive' do 
      of_age = Game.last.tributes.all? { |trib| trib.of_age? }
      expect(of_age).to be_true
    end
  end
end