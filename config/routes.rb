Rails.application.routes.draw do
  devise_for :users
  
  get 'drugs/create'
  get 'drugs/new'
  get 'prescriptions/create'
  get 'prescriptions/new'
  get 'prescriptions/destroy'
  get 'prescriptions/index'
  get 'prescriptions/show'
  get 'clients/create'
  get 'clients/new'
  get 'clients/edit'
  get 'clients/update'
  get 'clients/show'
  get 'doctors/create'
  get 'doctors/new'
  get 'doctors/edit'
  get 'doctors/update'
  get 'doctors/show'
  get 'retailers/create'
  get 'retailers/new'
  get 'retailers/edit'
  get 'retailers/update'
  get 'retailers/show'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
end
