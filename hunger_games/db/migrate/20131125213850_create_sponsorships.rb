class CreateSponsorships < ActiveRecord::Migration
  def change
    create_table :sponsorships do |t|
      t.integer :tribute_id, null: false
      t.integer :sponsor_id, null: false
    end
  end
end
