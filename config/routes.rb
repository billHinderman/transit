Rails.application.routes.draw do
  resources :train_routes
  resources :train_stations
  resources :train_stops
end
