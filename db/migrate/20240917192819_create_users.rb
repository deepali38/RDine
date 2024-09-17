class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users, id: :binary, limit: 16 do |t|
      t.string :name
      t.string :email
      t.string :role

      t.timestamps
    end
  end
end
