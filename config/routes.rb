Rails.application.routes.draw do

  resources :albums
  resources :smartphones
  resources :reviews
  resources :comments
  resources :users
  resources :products
  get 'home/index'
  get 'register' => 'users#new'
  get 'login' => 'logins#new'
  post 'login' => 'logins#create'
  delete 'logout' => 'logins#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
