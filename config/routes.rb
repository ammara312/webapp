Rails.application.routes.draw do
  resources :products, :invoices, :orders
  resources :users, only: [:new, :create, :edit, :update, :destroy]

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #root 'static_pages#index'
  root 'static_pages#landing_page'
  
  post 'static_pages/thank_you'
  
  resources :orders, only: [:index, :show, :create, :destroy]

  # get '/orders', to: 'orders#index'
  # get '/orders', to: 'orders#show'
 
end
