Rails.application.routes.draw do
  resources :books
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'top#index'
end
