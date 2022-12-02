Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/show'
  devise_for :users
  root to: "pages#home"

  scope "profile" do
    get "", to: "pages#profile", as: "profile"
  end
  # delete "cooperative_material/:id", to: "cooperative_materials#destroy", as: "cooperative_material_delete"

  resources :cooperatives, only: %i[index show] do
    resources :trades, only: %i[new create]
    resources :cooperative_materials, only: %i[index new create]
  end
  resources :trades, only: %i[destroy update]
  resources :materials, only: %i[index]
  resources :cooperative_materials, only: %i[destroy]
end
