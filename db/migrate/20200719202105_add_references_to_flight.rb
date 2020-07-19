class AddReferencesToFlight < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :flights,
                      :airports,
                      column: :from_id

      add_foreign_key :flights,
                      :airports,
                      column: :to_id
  end
end
