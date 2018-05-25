Rails.application.routes.draw do
  resources :cities
  resources :reviews
  resources :bookings
  resources :items
  resources :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'layouts#index'
end