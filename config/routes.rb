Rails.application.routes.draw do
  # Routes Devise générées automatiquement
  devise_for :users

  # Routes PWA
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  # Routes RESTful pour les événements et les utilisateurs
  resources :events
  resources :users, only: [:show]

  # La page d'accueil devient l'index des événements
  root "events#index"
end