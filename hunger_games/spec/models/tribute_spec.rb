require 'spec_helper'

describe Tribute do 
  # before do
  #   $t = self
  # end

  let(:tribute) { Tribute.new }

  describe '::new' do 
    it 'has either volunteered or not' do 
      expect(tribute).to have(1).errors_on(:volunteer)
    end
  end
end