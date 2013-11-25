class AddDistrictsToCitizens < ActiveRecord::Migration
  def change
    change_table :citizens do |t|
      t.references :district, null: false, index: true
    end

    reversible do |dir|
      dir.up do
        execute <<-SQL  
          ALTER TABLE citizens
          ADD CONSTRAINT fk_citizens_citizens
          FOREIGN KEY (district_id)
          REFERENCES districts(id)
        SQL
      end
    end
  end
end
