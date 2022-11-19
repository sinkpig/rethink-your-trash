Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/show'
  devise_for :users
  root to: "pages#home"
  get "/profile", to: "pages#profile"

  resources :cooperatives, only: %i[index show] do
    resources :trades, only: %i[new create]
  end
  resources :trades, only: %i[destroy]
  resources :materials, only: %i[index]
end

# cooperatives must be able to edit only trade status
