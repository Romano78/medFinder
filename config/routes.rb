Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :medications, only: [:index] do
    resources :comparisons, only: [:index]
    resources :favorites, only: [:create, :destroy]
    resource :comparison, only: [:show]

    collection do
      get :search
    end
  end

  post "favorite/:id", to:"favorites#favorite", as: "favorite"
 resource :map, only: [:show] do
  collection do
    get :nearby_pharmacy
  end
 end

  get "/mf_styles", to:"pages#mf_styles"

  get "/dashboard", to:"pages#dashboard"


end
