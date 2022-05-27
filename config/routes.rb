Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  resources :dinos, only: [:index, :show] do
    resources :bookings, only: [:create, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :owner do
    resources :bookings, only: [] do
      member do
        patch :approve
        patch :reject
      end
    end
    resources :dinos, only: [:new, :create, :index, :destroy]
  end
  resource :dashboard, only: :show
end
# resources :ratings, only: [:new, :create]
