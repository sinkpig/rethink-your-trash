Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/show'
  devise_for :users
  root to: "pages#home"
  get "/profile", to: "pages#profile"

  resources :cooperative, only: %i[index show] do
    resources :trades, only: %i[new create]
  end
  resources :trades, only: %i[destroy update]
  resources :materials, only: %i[index]
  resources :cooperative_materials, only: %i[create destroy]
end
