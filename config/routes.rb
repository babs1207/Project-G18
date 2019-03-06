Rails.application.routes.draw do
  resources :requests
  devise_for :drivers, path: 'drivers', controllers: {
    sessions: 'drivers/sessions',
    registrations: 'drivers/registrations'
  }

  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions', 
    registrations: 'users/registrations' 
  }

  resources :homes, only: [:index]

  get 'homes/registro', to: 'homes#registro', as: 'registro' 
  get 'homes/sesion', to: 'homes#sesion', as: 'sesion' 

  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
