class Booking < ApplicationRecord
  belongs_to :flight

  validates :passengers, presence: true
  validates :flight, presence: true
end
