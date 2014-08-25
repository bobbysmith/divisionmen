Rails.application.routes.draw do
  root "home#index"
  devise_for :users
  resources :tours
  resources :blogs
  resources :videos
  resources :songs
  get "/contact", to: "contacts#index"
end
