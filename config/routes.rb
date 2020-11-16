Rails.application.routes.draw do
  resources :shoppingcart_items
  resources :shoppingcarts
  resources :items
  resources :users

  #root
  root to: 'sessions#new'

  # login routes 
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

  # sign up routes 
  get '/signup', to: 'users#new', as: 'signup'

  #logout routes
   delete '/logout', to: 'sessions#destroy', as: 'logout'

  # add to shoppingcart_item 
  post '/add_to_cart/:id' => 'shoppingcart_items#add_to_cart', :as => 'add_to_cart'

  # checkout 
  post 'checkout', to: "items#checkout"
end
