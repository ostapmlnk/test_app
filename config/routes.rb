Rails.application.routes.draw do
  resources :reviews
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :bookings
  resources :items
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
