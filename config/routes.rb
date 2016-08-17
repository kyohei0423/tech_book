Rails.application.routes.draw do
  root 'top#index'
  resources :books
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end
