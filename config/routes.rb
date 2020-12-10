Rails.application.routes.draw do
  resources :levels
  resources :users
  resources :bricks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
