Rails.application.routes.draw do
  devise_for :users
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  resources :events do
    resources :attendances, only: [ :create ]
  end
  resources :users, only: [ :show ]
  root "events#index"
end
