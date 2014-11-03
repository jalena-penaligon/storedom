Rails.application.routes.draw do
  resources :categories

  resources :logins

  resources :customers

  resources :photographs

  root 'items#index'

  resources :items,  only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users,  only: [:index, :show]
end
