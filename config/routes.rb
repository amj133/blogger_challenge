Rails.application.routes.draw do
  root to: "welcome#index"
  get "/register", to: "users#new"

  resources :users, only: [:show, :create]
end
