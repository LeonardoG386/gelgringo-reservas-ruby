Rails.application.routes.draw do
  resources :boats
  resources :reservations
  resources :boxes
  resources :enabled_clients
  devise_for :users
  resources :clients
  resources :enable_people

  
  get 'welcome/index'
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
