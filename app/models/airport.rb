class Airport < ApplicationRecord
    validates :code, presence: true

    has_many :departing_flights, foreign_key: :from_id, class_name: "Flight"
    has_many :arriving_flights, foreign_key: :to_id, class_name: "Flight"

    #scopes
    scope :arriving_flights, -> { joins(:arriving_flights).distinct }
    scope :departing_flights, -> { joins(:departing_flights).distinct }
end
