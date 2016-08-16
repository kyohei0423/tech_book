Rails.application.routes.draw do
  root 'top#index'
  resources :books
  devise_for :users
end
