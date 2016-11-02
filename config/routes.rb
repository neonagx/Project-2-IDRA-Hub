Rails.application.routes.draw do
  root 'sessions#new'

  get 'users' => 'users#index'
  get 'users/new' => 'users#new', as: :new_user
  get 'users/:id' => 'users#show', as: :user
  post 'users' => 'users#create'
  get 'users/:id/edit' => 'users#edit', as: :edit_user
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'

  resources :products do
    resources :comments
    resources :images
  end

  # get 'products/' => 'products#index'
  # get 'products/new' => 'products#new', as: :new_product
  # get 'products/:id' => 'products#show', as: :product
  # post 'products/' => 'products#create'
  # get 'products/:id/edit' => 'products#edit', as: :edit_product
  # patch 'products/:id' => 'products#update'
  # delete 'products/:id' => 'products#destroy'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
