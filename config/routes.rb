Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'product#index'

  resources :product

  namespace :basket do
    resources :restful_action, :path => 'action'
  end

  resources :basket do
    member do
      post 'add'
    end
  end

  devise_for :users, controllers: {
      sessions:      'users/sessions',
      registrations: 'users/registrations',
      shared:        'users/shared',

      :omniauth_callbacks => "users/omniauth_callbacks"
  }

  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
