Rails.application.routes.draw do

  root "static_pages#home"
  devise_for :users
  resources :users, only: [:show]
  resources :songs, only: [:index,:show]
  resources :reviews, only: [:create]
end
