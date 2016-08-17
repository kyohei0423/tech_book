Rails.application.routes.draw do
  resources :books
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root 'top#index'
end
