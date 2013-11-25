class Sponsorship < ActiveRecord::Base
  belongs_to :tribute
  belongs_to :sponsor

  def tribute
    Tribute.find(self.tribute_id)
  end

  
end