Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/dashboard', to: 'pages#dashboard'

  resources :kids, only: [:create, :show, :edit, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
