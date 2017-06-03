Rails.application.routes.draw do
  root 'customers#index'

  resources :customers
  resources :billboard_items
  resources :billboard_types
  resources :agreements

end
