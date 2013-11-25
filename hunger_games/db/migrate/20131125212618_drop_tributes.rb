class DropTributes < ActiveRecord::Migration
  def change
    drop_table :tributes
  end
end
