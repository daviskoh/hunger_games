class UnrequireVolunteer < ActiveRecord::Migration
  def change
    change_column :citizens, :volunteer, :boolean
  end
end
