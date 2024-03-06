Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'draft', to: 'pages#draft'
  resources :spots, only: %i[index show] do
    collection do
      get :top
    end
    resources :reviews, only: %i[new create update destroy]
    resources :bookmarks, only: %i[new create destroy]
    resources :photos, only: %i[new create destroy]
  end
  resources :favorites, only: %i[index]
  resources :follows, only: %i[create destroy]
  resource :profile, only: %i[show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
