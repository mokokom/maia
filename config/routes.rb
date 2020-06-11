Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/dashboard', to: 'pages#dashboard'

  resources :kids, only: [:index, :create, :show, :edit, :update]

<<<<<<< HEAD
  get '/dashboard', to: 'dashboard#new'
=======
>>>>>>> 1e1883f0371a13cdfac1562eed4e478554d727c6
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
