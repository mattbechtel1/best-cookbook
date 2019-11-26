Rails.application.routes.draw do
  get '/recipes/sorted', to: 'recipes#index_sorted', as: 'recipes_sorted'
  resources :recipe_ingredients
  resources :allergens
  resources :ingredients
  resources :users
  resources :recipes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
