class CreateTributes < ActiveRecord::Migration
  def change
    create_table :tributes do |t|
      t.float :rating
      t.belongs_to :citizen

      t.timestamps
    end
  end
end
