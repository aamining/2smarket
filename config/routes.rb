Rails.application.routes.draw do
  get '/orders/product/:product_id', to: 'orders#charge', as: 'order_charge' # order_charge_path
  get '/orders/purchase', to: 'orders#purchase', as: 'order_purchase' # order_purchase_path
  resources :orders
  resources :products
  resources :profiles
  devise_for :users
  resources :charges
  root 'home#index'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
