Rails.application.routes.draw do
  resources :bookings, only:[:new, :show, :create]
  resources :flights
  root "flights#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
