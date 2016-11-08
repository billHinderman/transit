Rails.application.routes.draw do
  resources :train_routes
  resources :train_stations
  resources :train_stops

  get "/train_stops/:id/eta", controller: "train_stops", action: "get_eta"
end
