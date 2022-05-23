Rails.application.routes.draw do
  root to: 'pages#home'

  resources :dinos, only: [:index, :show] do
    resources :bookings, only: :create
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :owner do
    resources :bookings, only: [ :index, :create] do
      member do
        patch :approve, :reject
      #   post '/approve', to: 'bookings#approve'
      #   post '/decline', to: 'bookings#decline'
      end
    end
    resources :dinos, only: [ :new, :create]
  end
  resource :dashboard, only: :show
end
# resources :ratings, only: [:new, :create]
