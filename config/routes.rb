Rails.application.routes.draw do
  resources :books
  root 'top#index'
end
