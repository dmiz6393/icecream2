Rails.application.routes.draw do
  get '/logout', to:'sessions#destroy', as: :logout
  root to: 'welcome#index'
  resources :users, only: [:new,:create]
  get '/login', to:'sessions#new', as: :login 
  get '/signup', to: 'users#new', as: :signup
  post '/add_ice_cream' => 'ice_creams#add'
  get '/sessions/cart' => 'sessions#cart', as: :cart
  get '/checkout', to: 'orders#checkout', as: :checkout
  resources :ice_cream_orders
  resources :ice_creams
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
