Rails.application.routes.draw do
  resources :audibles
  resources :reviews
  resources :users
  resources :sessions, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
