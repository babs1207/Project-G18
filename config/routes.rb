Rails.application.routes.draw do
  devise_for :drivers, path: 'drivers'
  devise_for :users, path: 'users'

  resources :homes, only: [:index]
  get 'homes/registro', to: 'homes#registro', as: 'registro' 
  get 'homes/sesion', to: 'homes#sesion', as: 'sesion' 
  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
