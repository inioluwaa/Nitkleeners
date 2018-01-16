Rails.application.routes.draw do


  resources :line_items
  resources :carts
  resources :products
  get 'password_resets/new'

  get 'password_resets/edit'

  root 'static_pages#home'

  get '/about', to: 'static_pages#about'
  get '/services', to: 'static_pages#services'
  get '/contact', to: 'static_pages#contact'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: %i[new create edit update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
