Rails.application.routes.draw do
  resources :pantry_ingredients
  resources :ingredients
  resources :store_supplies
  resources :stores
  resources :meta_supplies
  
  resources :users do 
    resources :weekly_menus
    resources :recipes
    resources :grocery_lists
    resources :pantries
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
