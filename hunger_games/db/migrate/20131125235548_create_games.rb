class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :number, unique: true
      t.integer :zone

      t.timestamps
    end
  end
end
