Rails.application.routes.draw do
  get 'songs/index'

  get 'songs/show'

  root "static_pages#home"
  devise_for :users
  resources :users, only: [:show]
end
