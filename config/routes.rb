Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :users
  root to: "pages#home"
  get "/profile", to: "pages#profile"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :trades, only: %i[destroy]
  resources :materials, only: %i[show]
  resources :users, only: %i[index show] do
    resources :trades, only: %i[new create]
  end
end
