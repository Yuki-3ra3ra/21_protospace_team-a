Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'

  resources :prototypes, only: [:index, :new, :edit, :create, :show,]
  resources :users, only: [:show, :edit, :update]
end
