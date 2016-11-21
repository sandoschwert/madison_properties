Rails.application.routes.draw do
  resources :data_import, only: [:new, :create]
  resources :parcels
  root 'parcels#index'
end
