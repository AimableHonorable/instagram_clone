Rails.application.routes.draw do
  resources :contacts
  resources :profiles
  resources :posts
  get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
