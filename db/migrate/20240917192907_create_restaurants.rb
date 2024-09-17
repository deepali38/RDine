class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants, id: :binary, limit: 16 do |t|
      t.string :name
      t.integer :capacity

      t.timestamps
    end
  end
end
