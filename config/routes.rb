Rails.application.routes.draw do
  get 'categories/index', as: 'categories'
  get 'categories/:id/', to: 'categories#show', as: 'category' 
  get 'categories/:id/new', to: 'categories#new', as: 'new_category'
  resources :products
  root "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
