class Flight < ApplicationRecord
  
  validates :duration, presence: true
  validates :departure_date, presence: true

  belongs_to :from, :class_name => "Airport"
  belongs_to :to, :class_name => "Airport"

  #scopes
  scope :departure_dates, -> {select(:departure_date).distinct.order(departure_date: :asc)}

end
