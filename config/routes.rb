Rails.application.routes.draw do
  
  resources :meta_supplies
  
  resources :users do 
    resources :stores  # should I nest :store_supplies here ???
    resources :ingredients
    resources :pantries
    resources :recipes
    resources :grocery_lists
    resources :weekly_menus
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
