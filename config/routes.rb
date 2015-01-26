Rails.application.routes.draw do
  root "home#index"
  devise_for :users
  devise_scope :user do
    get "/login" => "devise/sessions#new"
  end
  resources :tours
  resources :blogs
  resources :videos
  resources :songs
  resources :photos
  resources :reviews
  get "/contact", to: "contacts#index"
end
