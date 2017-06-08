Rails.application.routes.draw do
  resources :address_books
  resources :areas
  resources :phone_numbers
  resources :phone_number_groups
  resources :phone_devices
  resources :phone_users

  resources :tech_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
