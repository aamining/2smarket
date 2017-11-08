Rails.application.routes.draw do
  get '/orders/product/:product_id', to: 'orders#charge', as: 'order_charge' # order_charge_path
  # get '/orders/purchase', to: 'orders#purchase', as: 'order_purchase' # order_purchase_path
  # need too work on:
  # resources :orders, only: [ :index, :show ]
  # resource  :order, only: [ :edit, :show ]
  resources :orders
  resources :products
  resources :profiles
  devise_for :users

  root 'home#index'

  post '/orders/payment', to: 'payments#create', as: 'order_payment'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
