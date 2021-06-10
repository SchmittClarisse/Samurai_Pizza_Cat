Rails.application.routes.draw do

  resources :items
  resources :carts, only:[:index, :show]
  devise_for :users
  resources :order_items
  resource :cards, only:[:show]

  root to: "carts#index"

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
