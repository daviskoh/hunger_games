class AddRating < ActiveRecord::Migration
  def change
    add_column :citizens, :rating, :string
  end
end
