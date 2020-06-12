Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/dashboard', to: 'pages#dashboard'

  resources :kids, only: [:index, :create, :show, :edit, :update] do
    resources :babysits, only: [:index, :create, :show, :edit, :update] do
      resources :events, only: [:create]
    end
  end
end
