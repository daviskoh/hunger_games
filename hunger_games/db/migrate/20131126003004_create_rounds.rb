class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :number
      t.references :game, null: false, index: true

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        execute <<-SQL  
          ALTER TABLE rounds
          ADD CONSTRAINT fk_rounds_games
          FOREIGN KEY (game_id)
          REFERENCES games(id)
        SQL
      end
    end
  end
end
