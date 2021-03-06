Rails.application.routes.draw do
  devise_for :users
  
  resources :doctors, only: [:new, :create, :edit, :update, :show] do
    resources :clients, only: [:index]
  	resources :prescriptions, only: [:new, :create, :show, :index]
  end

  resources :clients, only: [:new, :create, :edit, :update, :show, :destroy] do
  	resources :prescriptions, only: [:show, :index, :destroy]
  end

  resources :retailers, only: [:new, :create, :edit, :update, :show] do
    resources :clients, only: [:index]
  	resources :prescriptions, only: [:update, :show, :index]
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
end
