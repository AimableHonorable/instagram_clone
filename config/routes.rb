Rails.application.routes.draw do
  resources :contacts
  resources :profiles
  resources :posts
  root "users#new"
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :favorites, only: [:create, :destroy, :index]
end
