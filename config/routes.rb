Rails.application.routes.draw do
  resources :picks
  resources :stocks
  resources :entries
  resources :pools
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
