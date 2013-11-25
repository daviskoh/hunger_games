class CreateCitizens < ActiveRecord::Migration
  def change
    create_table :citizens do |t|
      t.string :type, null: false

      t.string :name, null: false
      t.integer :age, null: false
      t.string :sex, null: false

      t.boolean :volunteer, default: false
      t.integer :tesserae
      t.boolean :alive, default: false

      t.timestamps
    end
  end
end
