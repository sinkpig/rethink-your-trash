Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/profile", to: "pages#profile"

  resources :cooperatives, only: %i[index show] do
    resources :trades, only: %i[new create]
    resources :cooperative_materials, only: %i[index new create]
  end
  resources :trades, only: %i[destroy update]
  resources :materials, only: %i[index]
  resources :cooperative_materials, only: %i[destroy]
end
