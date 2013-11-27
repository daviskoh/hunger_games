require 'spec_helper'

describe Escort do 
  let(:escort) { Escort.new }

  describe '::new' do 
    it 'lives' do 
      expect(escort).to_not be_nil
    end
  end

  
end