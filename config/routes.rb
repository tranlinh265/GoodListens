Rails.application.routes.draw do
  root "static_pages#home"
  devise_for :users
  resources :users, only: %i(show)
  resources :songs, only: %i(index show) do
    resources :reviews, only: %i(new create show)
  end
  resources :relationships, only: %i(create destroy)
end
