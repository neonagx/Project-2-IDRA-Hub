Rails.application.routes.draw do

  get 'products/' => 'products#index'
  get 'products/new' => 'products#new', as: :new_product
  get 'products/:id' => 'products#show', as: :product
  post 'products/' => 'products#create'
  get 'products/:id/edit' => 'products#edit', as: :edit_product
  patch 'products/:id' => 'products#update'
  delete 'products/:id' => 'products#destroy'

  get 'users' => 'users#index'
  get 'users/new' => 'users#new', as: :new_user
  post 'users' => 'users#create'
  get 'users/:id/edit' => 'users#edit', as: :edit_user
  patch 'users/:id' => 'users#update'
  

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
