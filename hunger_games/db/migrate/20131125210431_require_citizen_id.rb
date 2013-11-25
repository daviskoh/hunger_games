class RequireCitizenId < ActiveRecord::Migration
  def change
    add_index :tributes, :citizen_id, unique: true
  end
end
