class CreateSponsorships < ActiveRecord::Migration
  def change
    create_table :sponsorships do |t|
      # tribute id
      t.integer :tribute_id, null: false
      # sponsor id
      t.integer :sponsor_id, null: false
    end
  end
end
