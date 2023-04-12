Rails.application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  resources :users, only: [:create]

  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
  root 'pages#index'

  # your other routes
end
