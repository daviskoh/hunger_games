class RemoveZoneFromtGames < ActiveRecord::Migration
  def change
    remove_column :games, :zone
  end
end
