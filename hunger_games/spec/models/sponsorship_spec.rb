require 'spec_helper'

describe Sponsorship do 
  let(:tribute) {Tribute.new(name: "Bob", age: 12, sex: "male", alive: true, volunteer: false)}
  let(:sponsor) {Sponsor.new(name: "Bob", age: 12, sex: "male", alive: true)}
  let(:sponsorship) { Sponsorship.new(tribute_id: 1, sponsor_id: 1) }

  describe '::new' do 
    it 'has a tribute' do 
      expect(sponsorship.tribute_id).to eq(1)
      expect(sponsorship.sponsor_id).to eq(1)
    end
  end
end