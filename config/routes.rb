Rails.application.routes.draw do
  root "home#index"
  devise_for :users
  resources :tours
  resources :blogs
  get "/contact", to: "contacts#index"
end
