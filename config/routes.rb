Rails.application.routes.draw do
  resources :cities
  resources :reviews
  resources :bookings
  resources :items
  resources :users
  root 'users#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
