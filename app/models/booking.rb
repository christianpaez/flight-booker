class Booking < ApplicationRecord
  belongs_to :flight

  validates :passengers, presence: true
  validates :flight, presence: true

  has_many :passengers
  accepts_nested_attributes_for :passengers
end
