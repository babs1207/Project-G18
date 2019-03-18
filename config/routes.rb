Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  

  resources :drivers, only: :index do
    collection do 
      get :my_requests
      get :my_vehicles
    end
    member do 
      post :acept
      post :progress
    end
  end

  resources :users, only: :index do
    member do 
      post :delivered
      post :cancel
      post :paid
    end
  end 

  resources :requests
  devise_for :drivers, path: 'drivers', controllers: {
    sessions: 'drivers/sessions',
    registrations: 'drivers/registrations'
  }

  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions', 
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks' 
  }

  resources :homes, only: [:index] do
    collection do 
      get :registro
      get :sesion
    end
  end

  
  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
