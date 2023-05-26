require 'sidekiq/web'

Rails.application.routes.draw do
  resources :payments
  resources :payment_methods
  resources :bookings
  resources :reviews
  resources :customers
  resources :contact_us
  resources :employees
  resources :roomtypes
  resources :room_classes
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users
  root to: 'room_classes#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
