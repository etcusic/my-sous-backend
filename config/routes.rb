Rails.application.routes.draw do
  
  resources :users do 
    resources :supplies
    resources :stores  # should I nest :store_supplies here ???
    resources :pantries  
    resources :recipes
    resources :grocery_lists
    resources :weekly_menus
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
