Rails.application.routes.draw do
  root to: "welcome#index"
  get "/register", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"

  resources :users, only: [:show, :create]
end
