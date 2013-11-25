class RequireCitizenIdDbLevel < ActiveRecord::Migration
  def change
    change_column :tributes, :citizen_id, :integer, null: false
  end
end
