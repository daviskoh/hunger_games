class RoundsTributes < ActiveRecord::Migration
  def change
    create_table :rounds_tributes do |t|
      t.belongs_to :round, null: false
      t.integer :tribute_id, null: false
    end

    reversible do |dir|
      dir.up do
        execute <<-SQL
          ALTER TABLE rounds_tributes
          ADD CONSTRAINT fk_rounds
          FOREIGN KEY (round_id)
          REFERENCES rounds(id)
        SQL
      end
    end
  end
end
