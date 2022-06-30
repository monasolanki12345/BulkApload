Rails.application.routes.draw do
  # get 'items_imports/new'
  # get 'items_imports/create'
  # get 'items/index'
  # get 'items/new'
  # get 'items/index'
  # get 'items/new'

  resources :items
  resources :items_imports, only: [:new, :create]

  root to: 'items_imports#new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
