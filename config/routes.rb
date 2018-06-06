Rails.application.routes.draw do
  resources :filters_values
  resources :filters
  resources :categories
  resources :cities
  resources :reviews
  resources :bookings
  resources :items
  get 'results', to: 'results#index', as: 'results'
  resources :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'layouts#index'
end