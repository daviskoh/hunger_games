class DropNullForType < ActiveRecord::Migration
  def change
    change_column :citizens, :type, :string
  end
end
