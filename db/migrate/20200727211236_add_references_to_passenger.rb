class AddReferencesToPassenger < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :passengers,
                    :bookings,
                    column: :booking_id
  end
end
