Rails.application.routes.draw do
  resources :addresses
  resources :stores
  devise_for :users
  resources :categories
  resources :products
  post 'stores/:store_id/addresses', to: 'address_stores#create', as: 'stores_addresses'


  root "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
