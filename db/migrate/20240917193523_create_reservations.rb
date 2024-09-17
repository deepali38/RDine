class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations, id: :binary, limit: 16 do |t|
      t.datetime :time
      t.string :name
      t.integer :number_of_people
      t.string :reservation_type
      t.string :source_website
      t.integer :phone_number
      t.references :user, null: false, foreign_key: true, type: :binary, limit: 16
      t.references :restaurant, null: false, foreign_key: true, type: :binary, limit: 16

      t.timestamps
    end
  end
end
