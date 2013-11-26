class DropNull < ActiveRecord::Migration
  def change
    execute "alter table citizens " +
    "alter column type drop not null;"
  end

  def self.down
    execute "alter table citizens " +
    "alter column type set not null;"
  end
end
