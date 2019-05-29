Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :medications, only: [:index] do
    resources :comparisons, only: [:index]
    resource :comparison, only: [:show]

    collection do
      get :search
    end
  end
  get "map", to: "pages#map"
end
