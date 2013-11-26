class AddGameIdToCitizens < ActiveRecord::Migration
  def change
    change_table :citizens do |t|
      t.references :game, index: true
    end

    reversible do |dir|
      dir.up do
        execute <<-SQL  
          ALTER TABLE citizens
          ADD CONSTRAINT fk_citizens_games
          FOREIGN KEY (game_id)
          REFERENCES games(id)
        SQL
      end
    end
  end
end
