Rails.application.routes.draw do
  resources :weekly_menus
  resources :ingredients
  resources :recipes
  resources :grocery_lists
  resources :pantries
  resources :users
  resources :things
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
