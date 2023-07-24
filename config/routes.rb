Rails.application.routes.draw do
  post 'category_search/index'
  get 'search/index'
  post 'searc/index'
  resources :operations
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "categories#index"
end

