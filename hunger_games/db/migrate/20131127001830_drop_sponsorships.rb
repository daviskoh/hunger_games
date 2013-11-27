class DropSponsorships < ActiveRecord::Migration
  def change
    drop_table :sponsorships
  end
end
