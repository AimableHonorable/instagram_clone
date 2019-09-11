Rails.application.routes.draw do
  resources :profiles
  resources :posts
  get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end
