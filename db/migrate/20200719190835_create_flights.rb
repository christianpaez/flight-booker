class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :duration
      t.datetime :departure_date

      t.integer :from_id
      t.integer :to_id
      
      t.timestamps
    end
  end
end
