Rails.application.routes.draw do
  resources :books do
    resource :order, only: [:new, :create]
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'top#index'
end
