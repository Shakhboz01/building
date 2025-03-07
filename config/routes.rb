Rails.application.routes.draw do
  resources :specific_epartment_numbers
  resources :top_ups
  resources :contracts do
    get :scheduled_day_contracts, on: :collection
    get :print_top_ups, on: :member
    get :print, on: :member
  end
  resources :price_calculators
  resources :room_squares
  resources :apartments
  resources :apartment_numbers
  resources :floors
  resources :blocks
  devise_for :users
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "blocks#index"
end
