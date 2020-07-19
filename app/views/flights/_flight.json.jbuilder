json.extract! flight, :id, :duration, :departure_date, :airport_id, :created_at, :updated_at
json.url flight_url(flight, format: :json)
