class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :passengers
      t.references :flight, foreign_key: true

      t.timestamps
    end
  end
end
