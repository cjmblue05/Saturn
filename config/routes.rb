Rails.application.routes.draw do
  resources :vehicle_parts
  resources :vehicles
  resources :prices
  resources :vehicle_models
  resources :suppliers
  resources :vehicle_brands

  resources :parts do
    collection { post :import }
  end

  root to: 'vehicles#index'
end
